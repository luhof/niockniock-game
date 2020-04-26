/// @desc creates a ds_grid line
/// @returns any
/// @arg itemId
/// @arg name
/// @arg desc
/// @arg sprite

ds_grid_add(global.items, argument[0], ITEM.NAME, argument[1]);
ds_grid_add(global.items, argument[0], ITEM.DESC, argument[2]);
ds_grid_add(global.items, argument[0], ITEM.SPRITE, argument[3]); 