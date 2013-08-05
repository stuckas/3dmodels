wall = 1.2;
$fn=100;

translate([0,0,-15]) {
	cylinder(r=6+wall, h=15);
}

cylinder(r1=6+wall, r2=13+wall, h=20);
