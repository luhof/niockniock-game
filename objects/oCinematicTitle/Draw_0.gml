/// @description ?
draw_sprite_ext(
	sprite_index,
	image_index,
	x,
	y + Wave(-5, 5, 5, 0),
	image_xscale + Wave(0, 0.1, 5, 0),
	image_yscale + Wave(0, 0.1, 5, 0),
	image_angle + Wave(-5, 5, 5, 0),
	image_blend,
	image_alpha
);