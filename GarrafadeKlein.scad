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
