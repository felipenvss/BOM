# BOM - Biblioteca de Objetos Matemáticos
## Objeto Sela (Parabolóide hiperbólico)
O arquivo selaReta.scad foi desenvolvido no programa OpenSCAD versão 2021.01.
Este arquivo constrói todas as lâminas para compor uma sela através de retas. Os sólidos que compõem todas as peças foram formados através de diversos cubos. Para imprimir toda a sela são necessários mais de 200 mil partes e o OpenSCAD não consegue executar a renderização para este número de peças.
É recomendável imprimir cada peça separada. Para isso os laços for(x=[-50:10:50]) e for(y=[-50:10:50]) devem indicar qual a peça deverá ser impressa. Cada eixo é composto por 11 peças e que no laço variam de [-50,+50] com passo de 10, que é a separação entre as peças. Para imprimir a peça 40 no eixo x deve-se colocar o laço em for(x=[40:10:40]), ou seja, os limites inferior e superior do laço devem ser iguais e devem pertencer ao conjunto {-50, -40, -30, -20, -10, 0, 10 , 20, 30, 40, 50}

### Para imprimir a peça 40 à qual citamos no exemplo, o seguinte cógio deverá ser utilizado:
```
largura = 5;
profundidade = 5;
ponto_focal = 90;
numero_laminas = 50;
altura = 90;
sulco = 25;    // Altura dos sulcos

module lamina_sela_y_45(y, largura, profundidade) {
    for (x = [-(numero_laminas+largura):0.1:numero_laminas+largura]){
        translate([x, y, 0])
        cube([largura, profundidade, -2*x*y/ponto_focal + altura], center = false);
    }
}


// As lâminas variam de -[50, +50] com passo de 10.
// Para imprimir uma lâmina colocar o loop em y=[30:10:30]
for(y=[-40:10:40]) {
    translate([0,0,0]) rotate([0,0,0]) {
        difference() {
            lamina_sela_y_45(y, largura, profundidade);
            for(x=[-50:10:50]) {
                translate ([x+2.5, 0, 0])
                cube([largura+1, 120, sulco * 2], center = true);
            }
        }    
    }
}


module lamina_sela_x_45(x, largura, profundidade) {
    for (y = [-(numero_laminas+largura):0.1:numero_laminas+largura]){
        translate([x, y, 0])
        cube([largura, profundidade, -2*x*y/ponto_focal + altura], center = false);
    }
}


// As lâminas variam de -[50, +50] com passo de 10.
// Para imprimir uma lâmina colocar o loop em x=[30:10:30]
for(x=[40:10:40]) {
    translate([0,0,0]) rotate([0,90,0]) {
        difference() {
            lamina_sela_x_45(x, largura, profundidade);
            for(y=[-50:10:50]) {
                translate ([0, y+2.5, 89.5])
                cube([122, largura+1, sulco * 5], center = true);
            }
        }    
    }
}
```
## Objeto Fita de Moebius
O arquivo fita.scad foi desenvolvido no programa OpenSCAD versão 2021.01. Este arquivo constrói todos os sólidos que compõem a peça, a Fita se dá forma através de diversos cubos que vão se multiplicando e rotacionando. Tais rotações são de 0° a 180° em seu próprio eixo e de 0° a 360° tendo como centro a origem. Como a impressão 3D com filamento precisa ser sólida, tendo uma resistência apropriada e que proporcione sustentação, criamos a fita para ser feita através de cubos com a espessura mínima recomendada (fin = 1).
### Para imprimir o objeto Fita de Moebius o seguinte cógio deverá ser utilizado:
```
fin = 1; /// finura da fita
larg = 20; /// largura da fita
ec = 1;
r = 15; /// raio de abertura da fita

/// fita de moebius

for(i=[0:360]){
    hull(){
        rotate([0,0,i])
        translate([r,0,0])
        rotate([0,i*0.5,0])
        cube([fin,ec,larg],center=true);
    }
}
```
## Objeto Garrafa de Klein
O arquivo GarrafadeKlein.scad foi desenvolvido no programa OpenSCAD versão 2021.01. Este arquivo constrói todos os sólidos que compõem as partes da garrafa, a Garrafa de Klein foi construída com cuidado e precição usando divesos comandos presentes no software. Para facilitar o entendimento da garrafa o código compartilhado mostra a visualização da mesma cortada ao meio, porém, temos a opção de visualizar ela completamente.
### Para imprimir o objeto Garrafa de Klein o seguinte cógio deverá ser utilizado:
```
/// Garrafa de Klein

module GdK(){
    difference(){
        translate([372,320,0])
        rotate([0, 0, 222])
        rotate_extrude(angle=45, convexity=10)
        translate([320, 0]) circle(30);
        translate([372,320,0])
        rotate([0, 0, 221])
        rotate_extrude(angle=47, convexity=10)
        translate([320, 0]) circle(20);
    }
    translate([450, 0, 0]) rotate([0, -90, 0])
    difference(){
        hull(){
            cylinder(1, 110, 110);
            translate([0, 0, 96]){
                cylinder(1, 30, 30);
            }
        }
        hull(){
            cylinder(1, 100, 100);
            translate([0, 0, 96]) {
                cylinder(1, 20, 20);
            }
        }
    }
    translate([450, 0, 0]) rotate([0, -90, 0])
    difference(){
        cylinder(10, 140, 140);
        cylinder(10, 100, 100);
    }
    translate([450, 0, 0]) rotate([0, -90, 0])
    difference(){
        hull(){
            cylinder(1, 140, 140);
            translate([0, 0, 50]){
                cylinder(1, 190, 190);
            }
        }
        hull(){
            cylinder(1, 130, 130);
            translate([0, 0, 50]) {
                cylinder(1, 180, 180);
            }
        }
    }
    translate([400, 0, 0]) rotate([0, -90, 0])
    difference(){
        hull(){
            cylinder(1, 190, 190);
            translate([0, 0, 150]){
                cylinder(1, 180, 180);
            }
        }
        hull(){
            cylinder(1, 180, 180);
            translate([0, 0, 150]) {
                cylinder(1, 170, 170);
            }
        }
    }
    difference(){
        translate([250, 0, 0]) rotate([0, -90, 0])
        difference(){
            hull(){
                cylinder(1, 180, 180);
                translate([0, 0, 150]){
                    cylinder(1, 80, 80);
                }
            }
            hull(){
                cylinder(1, 170, 170);
                translate([0, 0, 150]) {
                    cylinder(1, 70, 70);
                }
            }
        }
        translate([70, 171, 0])
        rotate([0, 90, -45])
        cylinder(110, 20, 20);
    }
    translate([100, 0, 0]) rotate([0, -90, 0])
    difference(){
        hull(){
            cylinder(1, 80, 80);
            translate([0, 0, 100]){
                cylinder(1, 40, 40);
            }
        }
        hull(){
            cylinder(1, 70, 70);
            translate([0, 0, 100]) {
                cylinder(1, 30, 30);
            }
        }
    }
    rotate([0, -90, 0])
    difference(){
        hull(){
            cylinder(1, 40, 40);
            translate([0, 30, 71]) rotate([-45, 0, 0]) {
                cylinder(1, 30, 30);
            }
        }
        hull(){
            cylinder(1, 30, 30);
            translate([0, 30, 71]) rotate([-45, 0, 0]) {
                cylinder(1, 20, 20);
            }
        }
    }
    difference(){
        translate([0,100,0])
        rotate([0, 0, 45])
        rotate_extrude(angle=180, convexity=10)
        translate([100, 0]) circle(30);
        translate([0,100,0])
        rotate([0, 0, 45])
        rotate_extrude(angle=180, convexity=10)
        translate([100, 0]) circle(20);
    }
    translate([70, 171, 0])
    rotate([0, 90, -45])
    difference(){
        cylinder(100, 30, 30);
        cylinder(100, 20, 20);
    }
}

/// Garrafa de Klein cortada ao meio

difference(){
    GdK();
    translate([-150, -200, 0])
    cube([600, 450, 250]);
}

/// Substituir o comando acima "difference() {...}" por "GdK();" para visualizar a Garrafa completa
```
## Objeto Volumes (Princípio de Cavalieri)
O arquivo Volumes.scad foi desenvolvido no programa OpenSCAD versão 2021.01. Este arquivo constrói todos os sólidos interessantes para entender a relação de volume e área entre um cilindro equilátero, uma clépsidra, uma anticlépsidra e uma esfera de mesmo raio, e também a dedução do volume de uma esfera através do Princípio de Cavalieri, os objetos foram gerados com comandos básicos presentes no software. Podemos observar as relações entre os sólidos editando apenas a altura (TC) do cilindro equilátero principal dentro do código compartilhado.
### Para imprimir o objeto Volumes o seguinte cógio deverá ser utilizado:
```
/// Volumes

TC = 100; /// Tamanho do Cilindro (altura)

/// Cilindro
module C() {
    cylinder(TC, TC/2, TC/2);
}

/// C - E
module c1() {
    difference(){
        cylinder(TC*0.45, TC/2, TC/2);
        translate([0, 0, TC/2])
        sphere(TC/2);
    }
}

/// Esfera
module E() {
    translate([0, 0, TC/2])
    sphere(TC/2);
}

/// Anticlépsidra
module AC() {
    difference(){
        cylinder(TC, TC/2, TC/2);
        cylinder(h=TC/2, r1=TC/2, r2=0);
        translate([0, 0, TC/2])
        cylinder(h=TC/2, r1=0, r2=TC/2);
    }
}

/// Clépsidra (dois cones)
module DC() {
    cylinder(h=TC/2, r1=TC/2, r2=0);
    translate([0, 0, TC/2])
    cylinder(h=TC/2, r1=0, r2=TC/2);
}

/// Representação de volumes dos sólidos

C();

translate([TC*1.5, 0, 0])
c1();

translate([TC*3, 0, 0])
c1();

translate([TC*4.5, 0, 0])
E();

translate([0, TC*1.5, 0])
C();

translate([TC*3, TC*1.5, 0])
AC();

translate([TC*1.5, TC*1.5, 0])
DC();

translate([TC*4.5, TC*1.5, 0])
E();
```
### Equipe de desenvolvimento
- Márcio Nascimento
- Dionne Monteiro
- Felipe Neves
