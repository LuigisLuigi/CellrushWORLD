function scr_player_state_free(){
	//movement
	h_speed = lengthdir_x(input_magnitude * speed_walk, input_direction);
	v_speed = lengthdir_y(input_magnitude * speed_walk, input_direction);

	scr_player_collision();

	//updating sprite index
	var _old_sprite = sprite_index;
	if (input_magnitude != 0)
	{
		direction = input_direction
		sprite_index = sprite_run;
	} else sprite_index = sprite_idle;
	if (_old_sprite!= sprite_index) local_frame = 0;

	//updating image index
	scr_player_animate_sprite();
}