
$fn = 50;

module bar() {
	translate([-44-11,-44-11,0])
	union(){
		
		difference(){
			rotate_extrude(convexity = 120) translate ([49,0,0]) circle(11);
			translate([-70,0,-11]) cube([70,70,45]);
			translate([-70,-70,-11]) cube([140,70,45]);
		}
	
		translate([49,1,0]) rotate([90,0,0]) cylinder(r=11,h=80);	
		translate([1,49,0]) rotate([0,270,0]) cylinder(r=11,h=80);
	}
}


module slider() {
	translate([-30,0,0])
	difference() {
		hull() {
			cylinder(r=9.5, h=10);
			translate([60,0,0]) cylinder(r=9.5, h=10);
		}
		
		translate([0,0,8.5])
		hull() {
			cylinder(r=8, h=10);
			translate([60,0,0]) cylinder(r=8, h=10);
		}
	}
}

model = 1;
if (model==1) {
rotate([180,0,0])
difference() {
	slider();
	translate([0, 34, -11+10-3])
	rotate([0,0,45]) #bar();
}


} else {

rotate([180,0,0])
difference() {
	slider();
	translate([55+17, 0, 10-3]) 
	rotate([90,0,0]) #bar();
}
}

