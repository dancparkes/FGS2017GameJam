/// @description Insert description here
// You can write your code in this editor

seconds = delta_time/1000000;
flameduration = flameduration - seconds;

if(flameduration<=0)
{
	instance_destroy();
}
