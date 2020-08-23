/// @description ?

	
	
if(entityShadow) draw_sprite(sShadow, 0, floor(x), floor(y));

draw_sprite_ext(
	sprite_index,
	image_index,
	floor(x),
	floor(y-z),
	image_xscale,
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
);

if(isFocused){
	draw_sprite_ext(sQuestionMark, 0, x, y, 1, 1, 0, c_white, 1);	
}

