if(keyboard_check_pressed(vk_f1)) {
	with(leftPlayerWeapon) {
		instance_destroy();
	}
	leftPlayerWeapon = instance_create_layer(oArmLeft.x, oArmLeft.y, "Weapon", oRazorleafMinigunLeft);
}
if(keyboard_check_pressed(vk_f2)) {
	with(leftPlayerWeapon) {
		instance_destroy();
	}
	leftPlayerWeapon = instance_create_layer(oArmLeft.x, oArmLeft.y, "Weapon", oSunbeamLeft);
}
if(keyboard_check_pressed(vk_f3)) {
	with(leftPlayerWeapon) {
		instance_destroy();
	}
	leftPlayerWeapon = instance_create_layer(oArmLeft.x, oArmLeft.y, "Weapon", oSquirrelPistolLeft);
}
if(keyboard_check_pressed(vk_f4)) {
	with(leftPlayerWeapon) {
		instance_destroy();
	}
	leftPlayerWeapon = instance_create_layer(oArmLeft.x, oArmLeft.y, "Weapon", oAcornShotgunLeft);
}

// Right Player
if(keyboard_check_pressed(vk_f5)) {
	with(rightPlayerWeapon) {
		instance_destroy();
	}
	rightPlayerWeapon = instance_create_layer(oArmRight.x, oArmRight.y, "Weapon", oRazorleafMinigunRight);

}
if(keyboard_check_pressed(vk_f6)) {
	with(rightPlayerWeapon) {
		instance_destroy();
	}
	rightPlayerWeapon = instance_create_layer(oArmRight.x, oArmRight.y, "Weapon", oSunbeamRight);

}
if(keyboard_check_pressed(vk_f7)) {
	with(rightPlayerWeapon) {
		instance_destroy();
	}
	rightPlayerWeapon = instance_create_layer(oArmRight.x, oArmRight.y, "Weapon", oSquirrelPistolRight);

}
if(keyboard_check_pressed(vk_f8)) {
	with(rightPlayerWeapon) {
		instance_destroy();
	}
	rightPlayerWeapon = instance_create_layer(oArmRight.x, oArmRight.y, "Weapon", oAcornShotgunRight);

}