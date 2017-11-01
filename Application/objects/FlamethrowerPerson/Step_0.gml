/// @description Insert description here
// You can write your code in this editor
playerdistance = distance_to_object(oPlayer);

if(playerdistance>DistanceToStop)
{
	move_towards_point(oPlayer.x,oPlayer.y,1);
}
else
{
	speed = 0;
}

heading = "right"
if(direction >= 280 || (direction <= 54 && direction > 0))
{
	heading = "right";
}
else if(direction >= 54 && direction <= 135)
{
	heading = "up";
}
else if(direction >= 135 && direction <= 225)
{
	heading = "left";
}
else if(direction >= 225 && direction <= 280)
{
	heading = "down";
}


if(heading == "right")
{
	image_index = 0;
}
else if(heading == "up")
{
	image_index = 9;
}
else if(heading =="left")
{
	image_index = 3;
}
else if(heading =="down")
{
	image_index = 9;
}
