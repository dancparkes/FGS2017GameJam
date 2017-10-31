/// @description Insert description here
// You can write your code in this editor

x = obj_player.x + 20;
y = obj_player.y - 10;

arm_direction = 0;
pad_num = 1;

if(gamepad_is_connected(pad_num))
{
	var h_point = gamepad_axis_value(pad_num, gp_axisrh);
	var v_point = gamepad_axis_value(pad_num, gp_axisrv);
	if ((h_point != 0) || (v_point != 0))
	{
		arm_direction = point_direction(0, 0, h_point, v_point);
	}
}
else
{
	arm_direction = point_direction(x,y,mouse_x,mouse_y)
}

if (arm_direction <= 90)
{
	image_angle = min(arm_direction,90);
}
else if (arm_direction >= 270)
{
	image_angle = max(arm_direction,270);	
}
else if (arm_direction < 180)
{
	image_angle = 90;	
}
else
{
	image_angle = 270;
}