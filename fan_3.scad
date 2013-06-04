$fn=80;


extruder_width = 35;
air_channel = 2.5;
air_channel_high = 5;
wall = 1.4;
air_hole = 0.5;
widht = extruder_width+4*wall+2*air_channel;
echo("widht=",widht);


goup_from_extruder = 35 - air_channel -2*wall;
echo("goup_from_extruder=",goup_from_extruder);

fan = 40;

//channel();
translate([0, -goup_from_extruder, 0])
back();

module back_full(){


cube([widht,  goup_from_extruder, air_channel_high + 2* wall ]);




}



module channel(){
difference(){
extern_channel();

translate([wall, wall,wall])
intern_channel();

//air under
translate([wall +air_channel-air_hole,wall +air_channel-air_hole,0])
cube([extruder_width +2*wall  +2*air_hole, extruder_width +2*wall +2*air_hole , wall+air_hole ]);

//hole to fan
translate([wall,-1,wall])
cube([widht-2*wall,  2*wall,  air_channel_high ]);
}
}

module extern_channel(){
difference(){
cube([widht,  widht,  air_channel_high + 2* wall ]);

//extruder
translate([ 2*wall +air_channel,   2*wall +air_channel  , 0])
cube([extruder_width , extruder_width, air_channel_high + 2* wall ]);
}
}


module intern_channel(){
difference(){
cube([widht -2*wall,  widht-2*wall,  air_channel_high]);

//extruder
translate([ air_channel,   air_channel  , 0])
cube([extruder_width +2*wall, extruder_width+2*wall, air_channel_high]);
}
}