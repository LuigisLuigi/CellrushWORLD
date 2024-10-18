//gets player input
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_activate = keyboard_check_pressed(vk_space) || keyboard_check(ord("SPACE"));
//key_attack = keyboard_check_pressed(vk_shift) || keyboard_check(ord("SHIFT"));
key_item = keyboard_check_pressed(vk_control) || keyboard_check(ord("CONTROL"));

input_direction = point_direction(0,0,key_right - key_left , key_down - key_up);
input_magnitude = (key_right - key_left != 0) || (key_down - key_up != 0);

script_execute(state);

if (global.game_paused == false) script_execute(state);