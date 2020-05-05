/// @description directly go to follow when room enter
if(instance_exists(follow)){
	x = follow.x;
	y = follow.y;
	// keep cam center inside room
	x = clamp(x, viewWidthHalf, room_width-viewWidthHalf);
	y = clamp(y, viewHeightHalf, room_height-viewHeightHalf);
	camera_set_view_pos(cam, x - viewWidthHalf, y - viewHeightHalf);
}
