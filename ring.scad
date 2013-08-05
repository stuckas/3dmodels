

$fn=40;

rotate([90,0,0]) union() {
	hull() {
		intersection() {
			sphere(9);
			translate([0,0,6]) sphere(9);
		} 
		translate([0,5,0]) intersection() {
			sphere(9);
			translate([0,0,6]) sphere(9);
		}
	}
	translate([0,14.5,3]) rotate([0,90,0])
	difference() {
		cylinder (h = 1, r = 2.5, center = true); 
		cylinder (h = 1, r = 1, center = true);
	}
}



