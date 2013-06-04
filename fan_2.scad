$fn=80;

wall = 1.4;
heigth=7;
widht = 40-2*wall;

extruder = 30;


//air hole
lock=1;

//disantce fan from extruder 
distance = 35;



front();
translate([-widht/2-wall, widht/2,0]) fan();


module fan(){
difference(){
cube([widht+2*wall, distance - widht/2,widht+2*wall]);
translate([wall,wall,wall])cube([widht, distance - widht/2-2*wall,widht]);

translate([widht/2+wall,distance - widht/2-wall-1,widht/2+wall,])
rotate([-90,0,0])
cylinder(r=widht/2-wall,h=2*wall);

translate([wall,0,wall]) #cube([widht, 2*wall, heigth]);

}



}


module front(){
difference(){
 block();
 inside();
 cylinder(r=extruder/2+wall+ lock, h=wall);
}
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
