$fn=20;

width=70;
length=100+width/2;
height=42;

wall = 3;

ro=8;
ri=ro-wall;

a1=acos(height/width);

union() {
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

// back part
translate([-width/2,length-width/2,2*ro])
rotate([90,180,90])
difference() {
	linear_extrude(height=width)
		polygon([[0,0],[length-width,0],[length-width,2*ro],[56,height]]);
	translate([0,0,wall])
		linear_extrude(height=width-2*wall)
		polygon([[3.6*wall,wall],[length-width,wall],[length-width,2*ro-wall],[length-width-wall,2*ro-wall],[length-width-wall,2*ro],[56-0.9*wall,height-2.5*wall]]);
	
	rotate([90,0,36.8])
		translate([(width/2),(width/2),-1])
		difference() {
			cylinder(r=(width/2)-wall, h=wall+3);
			translate([-width/2,-width/2,0])cube([12,width,wall+5]);
		}
}
}