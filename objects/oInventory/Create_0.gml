/// @description fill inventory
inventoryOpened = false;
inventoryJustHasBeenOpened = false;
itemSelected = -1;
//who should get it ?
receiver = noone;

//id, name, sprite, description
global.items = ds_grid_create(20, 3);
global.inventory = ds_list_create();

enum ITEM{
	NAME,
	DESC,
	SPRITE
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
	YOUDEAD
}

AddDBItem(ITEMS.BATWING, "Batwing", "The wing from a bat", sBatwing);
AddDBItem(ITEMS.BEER, "Beer", "Probably the best drink ever", sBeer);
AddDBItem(ITEMS.COIN, "Coin", "You're rich!", sCoin);
AddDBItem(ITEMS.DEADBABY, "Dead baby corpse", "It somehow fits into your inventory", sDeadBaby);
AddDBItem(ITEMS.GUITAR, "Guitar", "The coolest gadget.", sGuitar);
AddDBItem(ITEMS.LETTER, "Love letter", "You should give it to your loved one", sLoveLetter);
AddDBItem(ITEMS.LOVEPOTION, "Love Potion", "The one who drinks it will\nfall in love with the\nfirst person seen.", sLovePotion);
AddDBItem(ITEMS.MOVIETICKET, "Movie Ticket", "One entry to go see a super film", sMovieTicket);
AddDBItem(ITEMS.NUDEMAG, "Nude magazine", "Cannot be opened. Too sticky.", sNudeMag);
AddDBItem(ITEMS.PASSWORD, "Password", "admin:admin", sPassword);
AddDBItem(ITEMS.POPCORN, "Pop-corn", "Literally exploded corn", sPopcorn);
AddDBItem(ITEMS.RUPEE, "Rupee", "1 green rupee is worth 1 rupee", sRupee);
AddDBItem(ITEMS.SLIME, "Slime", "The most generic weak monster ever", sSlime);
AddDBItem(ITEMS.SUNGLASSES, "Sunglasses", "Makes you a cool guy", sSunglasses);
AddDBItem(ITEMS.SWORD, "Sword", "Pointy and dangerous", sSword);
AddDBItem(ITEMS.TOYRING, "Toy ring", "Shaped like the thing babies like to suck on", sToyRing);
AddDBItem(ITEMS.YOU, "You", "It's you!", sYou);
AddDBItem(ITEMS.KEY, "Key", "A white key", sKey);
AddDBItem(ITEMS.MAP, "Map", "Anti Lost Device", sMap);
AddDBItem(ITEMS.YOUDEAD, "Your dead corpse", "You shared fun memories with this trinket", sYou);


//debug : add some elements to inventory
ds_list_add(global.inventory, ITEMS.YOU);
ds_list_add(global.inventory, ITEMS.TOYRING);
/*ds_list_add(global.inventory, ITEMS.BATWING);
ds_list_add(global.inventory, ITEMS.COIN);
ds_list_add(global.inventory, ITEMS.POPCORN);
ds_list_add(global.inventory, ITEMS.NUDEMAG);*/


