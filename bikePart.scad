wall=2.8;
$fn=100;


		
		// front
		difference() {
			cube([12,3+wall,17+4+wall]);
			#translate([-1,wall,4]) cube([14,3,17]);
		}
		cube([12,12,4]);

