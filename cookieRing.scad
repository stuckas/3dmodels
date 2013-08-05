$fn=50;

/*
union() {

difference() {
cylinder(r=10,h=5);
cylinder(r=9,h=5);
}

difference() {
cylinder(r=12,h=1.5);
cylinder(r=7,h=1.5);
}

}
*/

difference() {
cube([20,20,5]);
translate([1,1,0])cube([18,18,5]);
}