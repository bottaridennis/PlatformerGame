/// @description Insert description here
// You can write your code in this editor
ysp += 0.1;
xsp = 0;
if keyboard_check(vk_left)
{
	xsp=-1;
}
if keyboard_check(vk_right)
{
	xsp=+1;
}
if place_meeting(x,y+1, obj_solid)
{
	ysp = 0;
	if keyboard_check(vk_space)
	{
		ysp = -2;
	}
}

move_and_collide(xsp, ysp, obj_solid)

if place_meeting(x, y, obj_flag)
{
	room_goto_next();
}
if place_meeting(x, y, obj_spike)
{
	room_restart();
}
if place_meeting(x, y, obj_flag)
{
	room_goto(rm_end);
}