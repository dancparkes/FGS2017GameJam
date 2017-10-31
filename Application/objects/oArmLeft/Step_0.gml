x = oPlayer.x - 50;
y = oPlayer.y - 10;
min_angle = 90;
max_angle = 270;
arm_direction = 180;
pad_num = 0;

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
	arm_direction = point_direction(x,y,mouse_x,mouse_y) ;
}
if(arm_direction > 0 && arm_direction <= 90) 
	arm_direction = 90;
if(arm_direction > 270 && arm_direction <= 360) 
	arm_direction = 270;
direction = arm_direction+ 180;
image_angle = arm_direction+ 180;
