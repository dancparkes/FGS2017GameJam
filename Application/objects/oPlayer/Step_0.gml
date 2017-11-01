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

var leftHMove = 0;
var leftVMove = 0;
var leftHsp = 0;
var leftVsp = 0;
// Movement
// Player 1
if(gamepad_is_connected(0))
{
	leftHMove = gamepad_axis_value(0, gp_axislh);
	leftVMove = gamepad_axis_value(0, gp_axislv);
	if(abs(leftHMove) < 0.1) 
		leftHMove = 0;
		
	if(abs(leftVMove) < 0.1) 
		leftVMove = 0;
		
		
	if( leftHMove != 0 || leftVMove != 0)
	{
		leftHsp = leftHMove * player_speed;
		leftVsp = leftVMove * player_speed;
	}
	
}
else
{	
	if(keyboard_check(p1_right)) { 
		leftVMove = 1;
		leftHsp =  player_speed;
	}
	if(keyboard_check(p1_left)) { 
		leftVMove = -1;
		leftHsp = -player_speed;
	}
	if(keyboard_check(p1_up)) { 
		leftHMove = 1;
		leftHsp = -player_speed;
	}
	if(keyboard_check(p1_down)) { 
		leftHMove = -1;
		leftHsp = player_speed;
	}
}

var rightHMove = 0;
var rightVMove = 0;
var rightHsp = 0;
var rightVsp = 0;
// Player 2
if(gamepad_is_connected(1))
{
	rightHMove = gamepad_axis_value(1, gp_axislh);
	rightVMove = gamepad_axis_value(1, gp_axislv);
	if(abs(rightHMove) < 0.1) 
		rightHMove = 0;
		
	if(abs(rightVMove) < 0.1) 
		rightVMove = 0;
		
	if ((rightHMove != 0) || (rightVMove != 0))
	{
		rightHsp = rightHMove * player_speed;
		rightVsp += rightVMove * player_speed;
	}
}
else
{	
	if(keyboard_check(p2_right)) { 
		rightVMove = 1;
		rightHsp = player_speed;
	}
	if(keyboard_check(p2_left)) { 
		rightVMove = -1;
		rightHsp = -player_speed;
	}
	if(keyboard_check(p2_up)) { 
		rightHMove = 1;
		rightVsp = -player_speed;
	}
	if(keyboard_check(p2_down)) { 
		rightHMove = -1;
		rightVsp = player_speed;
	}
}

leftDirection  = point_direction(x,y,x+leftVMove, y + leftHMove);
rightDirection = point_direction(x,y,x+rightVMove, y + rightHMove);

if(leftHMove != 0 || leftVMove != 0) {

	if(!leftMoving) {
		with(oLegLeft) {
			event_user(1);
		}
		leftMoving = true;
	}
}
else {
	leftDirection = 180;
	if(leftMoving) {
		with(oLegLeft) {
			event_user(0);
		}
		leftMoving = false;
	}
}
if(rightHMove != 0 || rightVMove != 0) {
	if(!rightMoving) {
		with(oLegRight) {
			event_user(1);
		}
		rightMoving = true;
	}
}
else {
	if(rightMoving) {
		with(oLegRight) {
			event_user(0);
		}
		rightMoving = false;
	}
}

var hsp = leftHsp + rightHsp;
// Horizontal collision
if(place_meeting(x + hsp,y,oBuildingCol))
{
	while(!place_meeting(x + sign(hsp),y,oBuildingCol))
	{
		x = x + sign(hsp);	
	}
	hsp = 0;
}

var vsp = leftVsp + rightVsp;
// Vertical collision
if(place_meeting(x,y + vsp,oBuildingCol))
{
	while(!place_meeting(x,y + sign(vsp),oBuildingCol))
	{
		y = y + sign(vsp);	
	}
	vsp = 0;
}

x += hsp;
y += vsp;