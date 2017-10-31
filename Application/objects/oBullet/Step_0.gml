remainingLifetime -= delta_time/1000000;

if(remainingLifetime < 0) {
	instance_destroy();
}
if(remainingLifetime < timeToFade) {
	image_alpha = max(0, remainingLifetime / timeToFade);
}