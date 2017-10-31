// Constants
player_speed = 4;

// Player 1 controls
p1_right = ord("D");
p1_left = ord("A");
p1_up = ord("W");
p1_down = ord("S");

// Player 2 controls
p2_right = vk_right;
p2_left = vk_left;
p2_up = vk_up;
p2_down = vk_down;

// Movement
// Player 1
if(gamepad_is_connected(0))
{
	var h_move = gamepad_axis_value(0, gp_axislh);
	var v_move = gamepad_axis_value(0, gp_axislv);
	if ((h_move != 0) || (v_move != 0))
	{
		x += h_move * player_speed;
		y += v_move * player_speed;
	}
}
else
{	
	if(keyboard_check(p1_right)) x = x + player_speed;
	if(keyboard_check(p1_left)) x = x - player_speed;
	if(keyboard_check(p1_up)) y = y - player_speed;
	if(keyboard_check(p1_down)) y = y + player_speed;
}
// Player 2
if(gamepad_is_connected(1))
{
	var h_move = gamepad_axis_value(1, gp_axislh);
	var v_move = gamepad_axis_value(1, gp_axislv);
	if ((h_move != 0) || (v_move != 0))
	{
		x += h_move * player_speed;
		y += v_move * player_speed;
	}
}
else
{	
	if(keyboard_check(p2_right)) x = x + player_speed;
	if(keyboard_check(p2_left)) x = x - player_speed;
	if(keyboard_check(p2_up)) y = y - player_speed;
	if(keyboard_check(p2_down)) y = y + player_speed;
}