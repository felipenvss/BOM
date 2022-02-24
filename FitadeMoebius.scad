fin = 1; /// Finura da fita
larg = 20; /// Largura da fita
ec = 1;
r = 15; /// Raio de abertura da fita

/// Fita de moebius

for(i=[0:360]){
    hull(){
        rotate([0,0,i])
        translate([r,0,0])
        rotate([0,i*0.5,0])
        cube([fin,ec,larg],center=true);
    }
}
