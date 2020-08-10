/// @description ?
if(shallFadeToBlack){
	draw_set_alpha(blackOpacity);
	draw_rectangle_color(0, 0, RESOLUTION_W, RESOLUTION_H, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}