with(rightPlayerWeapon) {
	instance_destroy();
}
rightPlayerWeapon = instance_create_layer(oArmRight.x, oArmRight.y, "Weapon", oRazorleafMinigunRight);
