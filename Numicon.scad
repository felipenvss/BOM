/// Numicon

module Pr1() {
    hull() {
        translate([5, 5, 0])
        cylinder(h = 5, d = 10);
        translate([15, 5, 0])
        cylinder(h = 5, d = 10);
        translate([15, 15, 0])
        cylinder(h = 5, d = 10);
        translate([5, 15, 0])
        cylinder(h = 5, d = 10);
        }
}
module Pr2() {
    hull() {
        translate([5, 5, 0])
        cylinder(h = 5, d = 10);
        translate([35, 5, 0])
        cylinder(h = 5, d = 10);
        translate([35, 15, 0])
        cylinder(h = 5, d = 10);
        translate([5, 15, 0])
        cylinder(h = 5, d = 10);
        }
}
module Pr3() {
    hull() {
        translate([5, 5, 0])
        cylinder(h = 5, d = 10);
        translate([35, 5, 0])
        cylinder(h = 5, d = 10);
        translate([35, 35, 0])
        cylinder(h = 5, d = 10);
        translate([25, 35, 0])
        cylinder(h = 5, d = 10);
        translate([5, 15, 0])
        cylinder(h = 5, d = 10);
        }
}
module Pr4() {
    hull() {
        translate([5, 5, 0])
        cylinder(h = 5, d = 10);
        translate([35, 5, 0])
        cylinder(h = 5, d = 10);
        translate([35, 35, 0])
        cylinder(h = 5, d = 10);
        translate([5, 35, 0])
        cylinder(h = 5, d = 10);
        }
}
module Pr5() {
    hull() {
        translate([5, 5, 0])
        cylinder(h = 5, d = 10);
        translate([35, 5, 0])
        cylinder(h = 5, d = 10);
        translate([35, 55, 0])
        cylinder(h = 5, d = 10);
        translate([25, 55, 0])
        cylinder(h = 5, d = 10);
        translate([5, 35, 0])
        cylinder(h = 5, d = 10);
        }
}
module Pr6() {
    hull() {
        translate([5, 5, 0])
        cylinder(h = 5, d = 10);
        translate([35, 5, 0])
        cylinder(h = 5, d = 10);
        translate([35, 55, 0])
        cylinder(h = 5, d = 10);
        translate([5, 55, 0])
        cylinder(h = 5, d = 10);
        }
}
module Pr7() {
    hull() {
        translate([5, 5, 0])
        cylinder(h = 5, d = 10);
        translate([35, 5, 0])
        cylinder(h = 5, d = 10);
        translate([35, 75, 0])
        cylinder(h = 5, d = 10);
        translate([25, 75, 0])
        cylinder(h = 5, d = 10);
        translate([5, 55, 0])
        cylinder(h = 5, d = 10);
        }
}
module Pr8() {
    hull() {
        translate([5, 5, 0])
        cylinder(h = 5, d = 10);
        translate([35, 5, 0])
        cylinder(h = 5, d = 10);
        translate([35, 75, 0])
        cylinder(h = 5, d = 10);
        translate([5, 75, 0])
        cylinder(h = 5, d = 10);
        }
}
module Pr9() {
    hull() {
        translate([5, 5, 0])
        cylinder(h = 5, d = 10);
        translate([35, 5, 0])
        cylinder(h = 5, d = 10);
        translate([35, 95, 0])
        cylinder(h = 5, d = 10);
        translate([25, 95, 0])
        cylinder(h = 5, d = 10);
        translate([5, 75, 0])
        cylinder(h = 5, d = 10);
        }
}
module Pr10() {
    hull() {
        translate([5, 5, 0])
        cylinder(h = 5, d = 10);
        translate([35, 5, 0])
        cylinder(h = 5, d = 10);
        translate([35, 95, 0])
        cylinder(h = 5, d = 10);
        translate([5, 95, 0])
        cylinder(h = 5, d = 10);
        }
}
module Df() {
    difference() {
        cube([40, 100, 5]);
        translate([20, 0, 0])
        cube([20, 20, 5]);
    }
}
/// Número 1
translate([20, 0, 0]) {
    difference() {
        Pr1();
        for(y=[10:20:10]) {
            translate([10, y, 0])
            cylinder(h = 5, r = 7.5);
        }
    }
}
/// Número 2
translate([50, 0, 0]) {
    difference() {
        Pr2();
        for(y=[10:20:10]) {
            translate([10, y, 0])
            cylinder(h = 5, r = 7.5);
        }
        for(y=[10:20:10]) {
            translate([30, y, 0])
            cylinder(h = 5, r = 7.5);
        }
    }
}
/// Número 3
translate([100, 0, 0]) {
    difference() {
        Pr3();
        for(y=[10:20:10]) {
            translate([10, y, 0])
            cylinder(h = 5, r = 7.5);
        }
        for(y=[10:20:30]) {
            translate([30, y, 0])
            cylinder(h = 5, r = 7.5);
        }
        translate([0, 20, 0])
        rotate([0, 0, 0])
        Df();
    }
}
/// Número 4
translate([150, 0, 0]) {
    difference() {
        Pr4();
        for(y=[10:20:30]) {
            translate([10, y, 0])
            cylinder(h = 5, r = 7.5);
        }
        for(y=[10:20:30]) {
            translate([30, y, 0])
            cylinder(h = 5, r = 7.5);
        }
    }
}
/// Número 5
translate([200, 0, 0]) {
    difference() {
        Pr5();
        for(y=[10:20:30]) {
            translate([10, y, 0])
            cylinder(h = 5, r = 7.5);
        }
        for(y=[10:20:50]) {
            translate([30, y, 0])
            cylinder(h = 5, r = 7.5);
        }
        translate([0, 40, 0])
        rotate([0, 0, 0])
        Df();
    }
}
/// Número 6
translate([250, 0, 0]) {
    difference() {
        Pr6();
        for(y=[10:20:50]) {
            translate([10, y, 0])
            cylinder(h = 5, r = 7.5);
        }
        for(y=[10:20:50]) {
            translate([30, y, 0])
            cylinder(h = 5, r = 7.5);
        }
    }
}
/// Número 7
translate([300, 0, 0]) {
    difference() {
        Pr7();
        for(y=[10:20:50]) {
            translate([10, y, 0])
            cylinder(h = 5, r = 7.5);
        }
        for(y=[10:20:70]) {
            translate([30, y, 0])
            cylinder(h = 5, r = 7.5);
        }
        translate([0, 60, 0])
        rotate([0, 0, 0])
        Df();
    }
}
/// Número 8
translate([350, 0, 0]) {
    difference() {
        Pr8();
        for(y=[10:20:70]) {
            translate([10, y, 0])
            cylinder(h = 5, r = 7.5);
        }
        for(y=[10:20:70]) {
            translate([30, y, 0])
            cylinder(h = 5, r = 7.5);
        }
    }
}
/// Número 9
translate([400, 0, 0]) {
    difference() {
        Pr9();
        for(y=[10:20:70]) {
            translate([10, y, 0])
            cylinder(h = 5, r = 7.5);
        }
        for(y=[10:20:90]) {
            translate([30, y, 0])
            cylinder(h = 5, r = 7.5);
        }
        translate([0, 80, 0])
        rotate([0, 0, 0])
        Df();
    }
}
/// Número 10
translate([450, 0, 0]) {
    difference() {
        Pr10();
        for(y=[10:20:90]) {
            translate([10, y, 0])
            cylinder(h = 5, r = 7.5);
        }
        for(y=[10:20:90]) {
            translate([30, y, 0])
            cylinder(h = 5, r = 7.5);
        }
    }
}
