$fn=20;
wall = 3;

width=70;
length=10+width/2;
ro=8;
ri=ro-wall;


difference() {

	// ring
	translate([0,0,ro]) difference() {
	rotate_extrude(convexity = 10)translate([(width/2)-ro, 0, 0])circle(r = ro);
	rotate_extrude(convexity = 10)translate([(width/2)-ro, 0, 0])circle(r= ri);
	}

	// ring opening for air input
	difference() {
	translate([-width, 0, -ro]) cube([2*width,2*width,4*ro]);
	translate([0,0,-ro]) cylinder(r=(width/2)-ro, h=3*ro);
	}

}

// channel
difference() {
	translate([-(width/2-ro),0,ro])rotate([-90,0,0]) difference() {
		// outer channel
		union() {
			cylinder(r=ro, h=width/2);
			translate([(width-2*ro),0,0]) cylinder(r=ro, h=width/2);
			translate([0,-ro,0]) cube([(width-2*ro),2*ro,width/2]);
		}
		// inner channel
		translate([0,0,-width/4]) union() {
			cylinder(r=ri, h=width);
			translate([(width-2*ro),0,0]) cylinder(r=ri, h=width);
			translate([0,-ri,0]) cube([(width-2*ro),2*ri,width]);
		}
	}
	translate([0,0,-ro]) cylinder(r=(width/2)-ro, h=4*ro);
}