x = oPlayer.x + 40;
y = oPlayer.y + 13;

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

if(arm_direction > 90 && arm_direction <= 180) 
	arm_direction = 90;
if(arm_direction > 180 && arm_direction < 270)
	arm_direction = 270;
direction = arm_direction;
image_angle = arm_direction;
