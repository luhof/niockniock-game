/// @description variables

state = PlayerStateFree;
lastState = state;
stateJustChanged = false;

//collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

image_speed = 0;

hSpeed = 0;
vSpeed = 0;

speedWalk = 1.0;

z = 0;

spriteRun = sPlayerGhost;
spriteIdle = sPlayerGhost;

localFrame = 0;