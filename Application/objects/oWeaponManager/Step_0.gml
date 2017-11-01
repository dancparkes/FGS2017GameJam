if(keyboard_check_pressed(vk_f1)) {
	event_user(0);
	currentLeftWeapon = 0;
}
if(keyboard_check_pressed(vk_f2)) {
	event_user(1);
	currentLeftWeapon = 1;
}
if(keyboard_check_pressed(vk_f3)) {
	event_user(2);
	currentLeftWeapon = 2;
}
if(keyboard_check_pressed(vk_f4)) {
	event_user(3);
	currentLeftWeapon = 3;
}
if(gamepad_is_connected(0)) {
	if(gamepad_button_check_pressed(0, gp_shoulderrb)) {
		currentLeftWeapon = (currentLeftWeapon + 1) % 4;
		event_user(currentLeftWeapon);
	}
}


// Right Player
if(keyboard_check_pressed(vk_f5)) {
	event_user(4);
	currentRightWeapon = 0;
}
if(keyboard_check_pressed(vk_f6)) {
	event_user(5);
	currentRightWeapon = 1;
}
if(keyboard_check_pressed(vk_f7)) {
	event_user(6);
	currentRightWeapon = 2;
}
if(keyboard_check_pressed(vk_f8)) {
	event_user(7);
	currentRightWeapon = 3;
}
if(gamepad_is_connected(1)) {
	if(gamepad_button_check_pressed(1, gp_shoulderrb)) {
		currentRightWeapon = (currentRightWeapon + 1) % 4;
		event_user(currentRightWeapon + 4);
	}
}