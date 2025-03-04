// Positie van het wapen
if (instance_exists(obj_player)){
	x = obj_player.x
	y = obj_player.y - 8;

	// Roteer het wapen naar de muispositie
	image_angle = point_direction(x, y, mouse_x, mouse_y);

	// Bereken de barrelpositie (20 pixels van het wapen naar de barrel)
	var barrel_x = x + lengthdir_x(20, image_angle);  // Verplaats de barrel in de richting van het wapen
	var barrel_y = y + lengthdir_y(20, image_angle);  // Verplaats de barrel in de richting van het wapen


	if (image_angle > 90) && (image_angle < 270) {
	    image_yscale = -0.75;
		x = obj_player.x - 8
	} 
	else 
	{
	    image_yscale = 0.75;
		x = obj_player.x + 8

	}

	// Pas de recoil (terugslag) toe
	x = x - lengthdir_x(global.recoil, image_angle);
	y = y - lengthdir_y(global.recoil, image_angle);

	// Pas de y-scale van de gun aan afhankelijk van de rotatie



	// Nu stellen we global.barrel_x en global.barrel_y in zodat ze later kunnen worden gebruikt door het firing part
	global.barrel_x = barrel_x;
	global.barrel_y = barrel_y;
	} else {
		instance_destroy()
}