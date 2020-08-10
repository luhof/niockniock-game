/// @description init and globals

randomize();

display_set_gui_size(RESOLUTION_W,RESOLUTION_H)

global.gamePaused = false;

global.iCamera = instance_create_layer(0, 0, layer, oCamera);

room_goto(ROOM_START);

//custom : intenvory


