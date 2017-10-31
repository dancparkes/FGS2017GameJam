if(keyboard_check_pressed(vk_f1)) {
	with(currentWeapon) {
		instance_destroy();
	}
	currentWeapon = instance_create_layer(x, y, "Weapon", oRazorleafMinigun);
}
if(keyboard_check_pressed(vk_f2)) {
	with(currentWeapon) {
		instance_destroy();
	}
	currentWeapon = instance_create_layer(x, y, "Weapon", oSunbeam);
}
if(keyboard_check_pressed(vk_f3)) {
	with(currentWeapon) {
		instance_destroy();
	}
	currentWeapon = instance_create_layer(x, y, "Weapon", oSquirrelPistol);
}
if(keyboard_check_pressed(vk_f4)) {
	with(currentWeapon) {
		instance_destroy();
	}
	currentWeapon = instance_create_layer(x, y, "Weapon", oAcornShotgun);
}