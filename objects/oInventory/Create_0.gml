/// @description fill inventory
inventoryOpened = false;
inventoryJustHasBeenOpened = false;
itemSelected = -1;
//who should get it ?
receiver = noone;

//id, name, sprite, description
global.items = ds_grid_create(22, 4);
global.inventory = ds_list_create();

enum ITEM{
	NAME,
	DESC,
	SPRITE,
	HASPREFIX
}

enum ITEMS{
	BATWING,
	BEER,
	COIN,
	DEADBABY,
	GUITAR,
	LETTER,
	LOVEPOTION,
	MOVIETICKET,
	NUDEMAG,
	PASSWORD,
	POPCORN,
	RUPEE,
	TOYRING,
	SLIME,
	SUNGLASSES,
	SWORD,
	YOU,
	KEY,
	MAP,
	YOUDEAD,
	CORNCORPSE,
	SATANSLOT
}

AddDBItem(ITEMS.BATWING, "Batwing", "The wing from a bat", sBatwing, false);
AddDBItem(ITEMS.BEER, "Beer", "Probably the best drink ever", sBeer, false);
AddDBItem(ITEMS.COIN, "Coin", "You're rich!", sCoin, false);
AddDBItem(ITEMS.DEADBABY, "Dead baby corpse", "It somehow fits into your inventory", sDeadBaby, false);
AddDBItem(ITEMS.GUITAR, "Guitar", "portable 'Oasis - Wonderwall' player", sGuitar, false);
AddDBItem(ITEMS.LETTER, "Love letter", "You should give it to your loved one", sLoveLetter, false);
AddDBItem(ITEMS.LOVEPOTION, "Love Potion", "A magic love potion", sLovePotion, false);
AddDBItem(ITEMS.MOVIETICKET, "Movie Ticket", "One entry to go see a super film", sMovieTicket, false);
AddDBItem(ITEMS.NUDEMAG, "Nude magazine", "Cannot be opened. Too sticky.", sNudeMag, false);
AddDBItem(ITEMS.PASSWORD, "Password", "admin:admin", sPassword, false);
AddDBItem(ITEMS.POPCORN, "Pop-corn", "Literally exploded corn", sPopcorn, false);
AddDBItem(ITEMS.RUPEE, "Rupee", "1 green rupee is worth 1 rupee", sRupee, false);
AddDBItem(ITEMS.SLIME, "Slime", "The most generic weak monster ever", sSlime, false);
AddDBItem(ITEMS.SUNGLASSES, "Sunglasses", "Makes you a cool guy", sSunglasses, false);
AddDBItem(ITEMS.SWORD, "Sword", "Pointy and dangerous", sSword, false);
AddDBItem(ITEMS.TOYRING, "Teat jewel", "Not for children.", sToyRing, false);
AddDBItem(ITEMS.YOU, "You", "It's you!", sYou, true);
AddDBItem(ITEMS.KEY, "Key", "A white key", sKey, false);
AddDBItem(ITEMS.MAP, "Map", "Anti Lost Device", sMap, false);
AddDBItem(ITEMS.YOUDEAD, "Your dead corpse", "Fun memories, huh?", sYouDead, true);
AddDBItem(ITEMS.CORNCORPSE, "Corn Dude corpse", "CORN DUUUDE", sCornCorpse, false);
AddDBItem(ITEMS.SATANSLOT, "SATANSLOT", "oops", sEmptySatanSlot, false);


//debug : add some elements to inventory
ds_list_add(global.inventory, ITEMS.YOU);
/*ds_list_add(global.inventory, ITEMS.BATWING);
ds_list_add(global.inventory, ITEMS.COIN);
ds_list_add(global.inventory, ITEMS.POPCORN);
ds_list_add(global.inventory, ITEMS.NUDEMAG);*/


