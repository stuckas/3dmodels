$fn=100;

difference() {	
	hull() {
		cylinder(r=15, h=30);
		translate([-35,30,0])cube([70,5,30]);
	}
	cylinder(r=11, h=30);
	
	// angle arretations
	#rotate ([0,0,-45]) translate([0,-2,30-4]) cube([30,4,4]);
	#rotate ([0,0,-90]) translate([0,-2,30-4]) cube([30,4,4]);
	#rotate ([0,0,-135]) translate([0,-2,30-4]) cube([30,4,4]);
}

translate([-35,30,0])cube([70,5,50]);