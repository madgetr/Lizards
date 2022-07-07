/// @description Insert description here
// You can write your code in this editor
//gamepad_set_axis_deadzone(0,0.5);
//var _axislh = gamepad_axis_value(device,gp_axislh);
//var _axislv = gamepad_axis_value(device,gp_axislv);
with(creature)
{
	//spd = min(point_distance(0,0,_axislh,_axislv)*8,8);
	//dir = point_direction(0,0,_axislh,_axislv);
	spd = min(point_distance(x,y,mouse_x,mouse_y)*8,8);
	dir = point_direction(x,y,mouse_x,mouse_y);
}

creature.image_index = device;