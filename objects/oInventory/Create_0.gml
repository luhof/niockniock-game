/// @description fill inventory
inventoryOpened = false;
inventoryJustHasBeenOpened = false;
itemSelected = 0;
//who should get it ?
receiver = noone;

//id, name, sprite, description
global.items = ds_grid_create(8, 3);
global.inventory = ds_list_create();

enum ITEM{
	NAME,
	DESC,
	SPRITE
}

enum ITEMS{
	BATWING,
	COIN,
	LETTER,
	MOVIETICKET,
	POPCORN,
	SLIME,
	SWORD
}

AddDBItem(ITEMS.BATWING, "Batwing", "The wing from a bat", sBatwing);
AddDBItem(ITEMS.COIN, "Coin", "One pence", sCoin);
AddDBItem(ITEMS.LETTER, "Love letter", "You should give it to your loved one !", sLoveLetter);
AddDBItem(ITEMS.MOVIETICKET, "Movie Ticket", "One entry to go see a super film", sMovieTicket);
AddDBItem(ITEMS.POPCORN, "Pop-corn", "Or exploded corn.", sPopcorn);
AddDBItem(ITEMS.SLIME, "Slime", "The most basic loot ever", sSlime);
AddDBItem(ITEMS.SWORD, "Sword", "A sharp sword to kill evil monsters", sSword);


//debug : add some elements to inventory
ds_list_add(global.inventory, ITEMS.BATWING);
ds_list_add(global.inventory, ITEMS.COIN);
ds_list_add(global.inventory, ITEMS.COIN);
ds_list_add(global.inventory, ITEMS.POPCORN);


