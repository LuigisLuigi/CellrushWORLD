state = scr_player_state_free;

collision_map = layer_tilemap_get_id(layer_get_id("collision"));

image_speed = 0;
h_speed = 0;
v_speed = 0;
speed_walk = 1.5;

sprite_run = spr_player_run;
sprite_idle = spr_player_idle;
local_frame = 0;