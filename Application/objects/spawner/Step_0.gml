if(remainingTime > 0) {
	remainingTime -= delta_time/1000000;
}
else {
	instance_create_depth(x, y, "Enemies", FlamethrowerPerson);
	remainingTime = spawn_rate;
}