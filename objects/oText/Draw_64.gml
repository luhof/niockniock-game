/// @description draw textbox

// typewriter
// typewriter vars
var charWidth = 8;
var line = 0;
var lineEnd = 25;
var i = 1;
var space = 0;
var delay = 3;

draw_sprite(sDialogBg, 0, x1, y1);
//NineSliceBoxStretched(sTextBoxBg, x1, y1, x2, y2, background);
draw_set_font(fText);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_color(c_black);

var _print = string_copy(message, 1, string_length(message));

if(responses[0] != -1)
{
	for(var j = 0; j < array_length_1d(responses); j++)
	{
		_print += "#n";
		if(j == responseSelected) _print += "#2";
		_print += "- "+ responses[j];
		if(j == responseSelected) _print += "#0";
	}
}

if(cutoff < string_length(message) && !isFastened){
	if(timer >= delay){
		cutoff++;
		timer = 0;
	}
	else timer++;
}
else{
	cutoff = string_length(_print);	
}


modifier = 0;
while(i <= string_length(_print) && i <= cutoff){
	
	while(string_char_at(_print, i) == "#"){
		var code = string_char_at(_print, ++i);
		if(code == "n"){
			space = 0;
			line++;	
		}
		else{
			modifier = real(code);
		}
		++i;
	}
	
	// go to next line ?
	var length = 0;
	while(string_char_at(_print, i) != " " && i < string_length(_print)){
		i++;
		length++;
	}
	if(space + length > lineEnd){
		space = 0;
		line++;
	}
	i-= length;
	
	switch(modifier){
		case 0: //normal
		{
			draw_set_colour(c_black);
			draw_text(x1 + xPadding + (space * charWidth), y1+yPadding+(13*line), string_char_at(_print, i));
			break;
		}
		case 1: //shaky
		{
			draw_set_colour(c_black);
			draw_text(x1 + xPadding+ (space * charWidth) + random_range(-1, 1), y1+yPadding+(13*line) + random_range(-1, 1), string_char_at(_print, i));
			break;
		}
		case 2: //red
		{
			draw_set_colour(c_red);
			draw_text(x1 + xPadding + (space * charWidth), y1+yPadding+(13*line), string_char_at(_print, i));
			break;
		}
	}

	space++;
	i++;
}

