if (hp <= 0) 
{
	
	with instance_create_layer(x, y, layer, obj_player_death)
	{
		direction = other.hitfrom
		hsp = lengthdir_x(3,obj_zombie.image_xscale);
		vsp = lengthdir_y(3,obj_zombie.image_yscale) - 2;
		if (sign(hsp) != 0) image_xscale = sign(hsp) * 2;
	}
	
	instance_destroy();	
}