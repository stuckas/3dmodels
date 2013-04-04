$fn=80;

wall = 3;
heigth=16;
widht = 82;

extruder = 40;


lock=3;

rotate([180,0,0])
difference(){
 block();
 inside();
 cylinder(r=extruder/2+wall+ lock, h=wall);
}

module inside(){
difference(){
union(){
 translate ([0,0,wall]) cylinder(r=widht/2 , h=heigth);
 translate([- widht/2 ,0,wall]) cube([widht , widht/2 +2*wall, heigth]);
}
 translate ([0,0,wall]) cylinder(r=extruder/2+wall , h=heigth);
}

}


module block(){
	difference(){
	union(){
		cylinder(r=widht/2 +wall, h=heigth+2*wall);
		translate([- widht/2 - wall,0,0])cube([widht + 2*wall, widht/2 + wall, heigth+2*wall]);
	}
	cylinder(r=extruder/2 , h=heigth+2*wall);
}
}
