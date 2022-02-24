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
