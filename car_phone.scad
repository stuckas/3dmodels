wall=2.8;
$fn=100;

difference() {
	union() {
		// base
		translate([-6,0,0]) cube([12,60,4]);

		// back
		translate([-57/2-wall,60,0]) difference() {
			cube([2*wall+57,10,17+4+wall]);
			translate([wall,-1,4])cube([57,12,17]);
			translate([wall+3,-wall,4+2*wall])cube([57-6,10+2*wall,17]);
			// cuts for holder
			#translate([5+wall,0,2]) cube([6,12,2]);
			#translate([57-5-wall,0,2]) cube([6,12,2]);
		}

		// middle
		translate([-57/2-wall,25,0]) difference() {
			cube([2*wall+57,10,17+4+wall]);
			translate([wall,-1,4])cube([57,12,17]);
			translate([wall+3,-wall,4+2*wall])cube([57-6,10+2*wall,17]);
		}
		
		// front
		translate([-6,0,0]) difference() {
			cube([12,3+wall,17+4+wall]);
			#translate([-1,wall,4]) cube([14,3,17]);
		}	
	}
}


// holder
module holder() {
	difference() {
		cube([4+2*wall+8,12,6]);
		translate([2,-wall,0]) cube([2.5,12,6]);
		translate([wall+4,wall,0]) cube([8,12,6]);
	}
}

translate([-30,0,0]) holder();
translate([10,0,0]) holder();
