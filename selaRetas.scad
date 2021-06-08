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
for(y=[-50:10:-50]) {
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

