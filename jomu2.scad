$fn=50;
w = 1; // wall

difference() {
	union() {
		linear_extrude(height=25)
			polygon([[0,-w],[1,21+w],[41+2*w-1,21+w],[41+2*w,-w],[41+w-4,-w],[41+w-4,0],[41+w,0],[41-1+w,21],[w+1,21],[w,0],[w+2,0],[w+2,-w]]);
		translate([0,-34,-1])cube([41+2*w,34+21+w,1]);
	}
	translate([-12,-40,-2*w]) 
		cylinder(r=40, h=3*w+25);
}
