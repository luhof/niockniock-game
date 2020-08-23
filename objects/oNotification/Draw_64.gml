/// @description ?
//squishy bg

draw_sprite_ext(sGotItemBg,
0,
RESOLUTION_W/2, RESOLUTION_H/2 + currY,
1,
1,
0,
c_white,
0.9);


//draw background
draw_sprite_ext(sGotItem, 0, RESOLUTION_W/2, RESOLUTION_H/2 + currY, image_xscale*1.1, image_yscale*1.1, currShadowRotate*3, c_black, 0.5);
draw_sprite_ext(sGotItem, 0, RESOLUTION_W/2, RESOLUTION_H/2 + currY, image_xscale, image_yscale, currShadowRotate, c_white, 1);


//draw object

var objSprite = global.items[# currObject, ITEM.SPRITE];
var hasPrefix = global.items[# currObject, ITEM.HASPREFIX];

var youGotText = hasPrefix ? "You got\n" : "You got a\n";

//shadow
draw_sprite_ext(objSprite, 0, 64+2, RESOLUTION_H/2 + currY,
Wave(2.0, 2.5, 3.0, 0.0),
Wave(2.0, 2.5, 3.0, 0.0),
Wave(-25, 25, 3.0, 0.0),
c_black,
0.5
);

draw_sprite_ext(objSprite, 0, 64, RESOLUTION_H/2 + currY,
Wave(2.0, 2.5, 3.0, 0.0),
Wave(2.0, 2.5, 3.0, 0.0),
Wave(-25, 25, 3.0, 0.0),
c_white,
1.0
);

//draw text
draw_set_colour(c_white);
var objName =  global.items[# currObject, ITEM.NAME];
var objDesc = global.items[# currObject, ITEM.DESC];
draw_set_font(fTextBig);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_black);
draw_text_transformed(RESOLUTION_W/2+32, RESOLUTION_H/2+1 + currY, youGotText + objName + "!", image_xscale, image_yscale, currShadowRotate);
draw_set_color($d77bba);
draw_text_transformed(RESOLUTION_W/2+32, RESOLUTION_H/2 + currY, youGotText + objName + "!", image_xscale, image_yscale, currShadowRotate);

draw_set_font(fText);
draw_set_color(c_black);
draw_text_transformed(RESOLUTION_W/2, RESOLUTION_H-24 + currY,"\""+objDesc+"\"", image_xscale, image_yscale, currShadowRotate);
draw_text_colour(100, 200, string(health), c_lime, c_lime, c_green, c_green, 1);