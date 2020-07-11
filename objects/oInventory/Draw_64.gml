/// @description ?

var alphaItemDraw = inventoryOpened ? 1 : 0.5;


draw_sprite_ext(sInventoryBackGround, 0, 0, 0, 1, 1, 0, c_white, alphaItemDraw);


draw_set_alpha(alphaItemDraw);

for(var i = 0; i<ds_list_size(global.inventory); i++){	
	var _itemSprite = global.items[# global.inventory[| i], ITEM.SPRITE];
	var _itemDesc = global.items[# global.inventory[| i], ITEM.DESC];
	var _itemName = global.items[# global.inventory[| i], ITEM.NAME];
	var isItemSelected = i == itemSelected;
	var itemOffsetY = isItemSelected ? 9 : 12;
	
	//draw arrow
	if(inventoryOpened){
		if(i == itemSelected){

			//draw description
			draw_sprite(sItemDesc, 0, 0, 30);
			draw_set_font(fText);
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			
			draw_set_color(c_black);
			draw_text(20, 46, _itemName);
			
			draw_set_color($d7d7d7);
			draw_text(10, 69, _itemDesc);
			draw_set_color(c_black);
			draw_text(10, 68, _itemDesc);
			
			//draw arrow and sprite shadow on top
			draw_sprite(sInventoryArrow, 0, i*25+10, Wave(20, 23, 1.0, 0));
			draw_sprite_ext(_itemSprite, 0, i*25+10, itemOffsetY + 2, 1, 1, 0, c_black, 0.5 );
			
			
		}
	}
	
	//draw front sprite
	draw_sprite_ext(_itemSprite, 0, i*25+10, itemOffsetY, 1, 1, 0, c_white, alphaItemDraw );
	
	
}

draw_set_alpha(1.0);
