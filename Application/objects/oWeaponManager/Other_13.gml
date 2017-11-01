with(leftPlayerWeapon) {
	instance_destroy();
}
leftPlayerWeapon = instance_create_layer(oArmLeft.x, oArmLeft.y, "Weapon", oAcornShotgunLeft);
