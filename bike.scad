wall=2.8;
$fn=100;

module fixing() {
difference() {
	translate([0,0,-8]) cube([20,4,10]);
	#translate([10,8,-14.5])rotate([90,0,0])cylinder(r=15, h=15);
}
}
difference() {
	union() {
		// base
		translate([-6,0,0]) cube([12,110,4]);

		// back
		translate([-57/2-wall,93-10+2*wall,0]) difference() {
			cube([2*wall+57,10+wall,17+4+wall]);
			translate([wall,-2,4])cube([57,12,17]);
		}

		// middle
		translate([-57/2-wall,25,0]) difference() {
			cube([2*wall+57,10,17+4+wall]);
			translate([wall,-1,4])cube([57,12,17]);
			translate([wall+3,-wall,4+2*wall])cube([57-6,10+2*wall,17]);
			translate([3*wall,0,0]) cube([1,20,2]);
			translate([57-2*wall,0,0]) cube([1,20,2]);
		}
		
		// front
		translate([-6,0,0]) difference() {
			cube([2*wall+57,10,17+4+wall]);
			translate([wall,-1,4])cube([57,12,17]);
			translate([wall+3,-wall,4+2*wall])cube([57-6,10+2*wall,17]);
			translate([3*wall,0,0]) cube([1,20,2]);
			translate([57-2*wall,0,0]) cube([1,20,2]);
		}
	}
}

