/// @description ?
if(entityShadow) draw_sprite(sShadow, 0, floor(x), floor(y));

var currentSprite =  global.items[# currentObj, ITEM.SPRITE];
//var currentName =  global.items[# global.inventory[| currentObj], ITEM.NAME];

draw_sprite_ext(
	currentSprite,
	image_index,
	floor(x),
	Wave(floor(y-8-z), floor(y-8-z-2), 2.0, 0),
	image_xscale,
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
);