draw_sprite(sShadow, 0, floor(x), floor(y));

/// @description draw with z
draw_sprite_ext(
	sprite_index,
	image_index,
	floor(x),
	floor(y-z-Wave(0,3,5.0, 0)),
	image_xscale,
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
);

