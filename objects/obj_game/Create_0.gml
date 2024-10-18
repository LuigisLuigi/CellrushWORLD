/// @description initialise and globals
randomize();

global.game_paused = false

global.i_camera = instance_create_layer(0, 0, layer, obj_camera);

room_goto(ROOM_START);