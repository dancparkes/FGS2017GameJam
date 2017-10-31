/// @description The step code
// You can write your code in this editor

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

// Movement
// Player 1
if(keyboard_check(p1_right)) x = x + player_speed;
if(keyboard_check(p1_left)) x = x - player_speed;
if(keyboard_check(p1_up)) y = y - player_speed;
if(keyboard_check(p1_down)) y = y + player_speed;
// Player 2
if(keyboard_check(p2_right)) x = x + player_speed;
if(keyboard_check(p2_left)) x = x - player_speed;
if(keyboard_check(p2_up)) y = y - player_speed;
if(keyboard_check(p2_down)) y = y + player_speed;