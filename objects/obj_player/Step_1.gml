if (hp <= 0) 
{
	
	with instance_create_layer(x, y, "Player", obj_player_death)
	{
		hsp = lengthdir_x(30,obj_zombie.image_xscale);
		vsp = lengthdir_y(30,obj_zombie.image_yscale) - 2;
		if (sign(hsp) != 0) image_xscale = sign(hsp) * 2;
		scr_ScreenShake(15,60)
		
	}
	
	instance_destroy();	
}