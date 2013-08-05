$fn=20;

width=70;
length=100+width/2; 
height=42;

wall = 3;

ro=8;
ri=ro-wall;

// back part
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