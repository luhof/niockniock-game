/// @arg Response
switch(argument0)
{
	case 0: break;
	case 1: NewTextBox("You gave response A!", 1); break;
	case 2: NewTextBox("Woh response B! Any further responses?", 1, ["3:Yes!","0:No thx"]); break;
	case 3: NewTextBox("Thanks for your responses!", 0); break;
	case 4: OpenInventoryNPC(); break;
	case 5:
		NewTextBox("Let me guess... You want a #2Love Potion#0?");
		NewTextBox("The #2Potion#0 that makes the one who drinks it fall in love with you?");
		NewTextBox("I'm sorry, I don't have it.");
		NewTextBox("I heard there is one in the #2cave#0... #2Far east#0.");
	break;
	case 6:
		NewTextBox("Sure, do you have #2Slime#0?");
		NewTextBoxChoice("Sell Slime?", 2, ["4:Yes!","0:No"]);
		break;
	case 7: event_user(2);
	default: break;
}