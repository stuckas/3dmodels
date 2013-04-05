$fn=50;
w = 2; // wall

difference() {
	union() {
		linear_extrude(height=10)
			polygon([[0,-4],[0,20+w],[40+2*w,20+w],[40+2*w,-4],[40+w-2,-4],[40+w-2,0],[40+w,0],[40-1+w,20],[w+1,20],[w,0],[w+2,0],[w+2,-4]]);
		translate([0,-34,-1])cube([40+2*w,34+20+w,1]);
	}
	translate([-12,-34,-2*w]) 
		cylinder(r=30, h=3*w);
}
