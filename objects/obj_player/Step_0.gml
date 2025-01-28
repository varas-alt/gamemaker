move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
move_x *= move_speed;

if (move_x != 0) {
  image_speed = 1;
  image_xscale = sign(move_x);
}
else {
  image_speed = 0;
}
if (place_meeting(x, y+1, o_solid))
{
  move_y = 0;
  if (keyboard_check(vk_space)) move_y = -jump_speed;
}
else if (move_y < 10) {
  move_y += 1;
}
if (!place_meeting(x+move_x, y+2, o_solid) && place_meeting(x+move_x, y+10, o_solid))
{
    move_y = abs(move_x);
    move_x = 0;
}
move_and_collide(move_x, move_y, o_solid);