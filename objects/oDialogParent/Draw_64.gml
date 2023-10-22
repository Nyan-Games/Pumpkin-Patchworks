//only draw dialog if show dialog = true

if(showing_dialog == true)
{
	//d = 30
	var text_x = 30;
	//d = 18
	var text_y = 125;
	//d = 32
	var height = 20;
	var border = 5;
	var padding = 16;


	//figure out height of the message
	height = string_height(current_dialog.message);

	//check if the current dialogue sprite is larger than height. If it is, match the heights
	if(sprite_get_height(current_dialog.sprite) > height)
	{
		height = sprite_get_height(current_dialog.sprite);
	}
	//32 pixels at top and bottom of text
	height += padding * 2;
	
	//get starting position of text
	text_x = sprite_get_width(current_dialog.sprite) + (padding * 2);
	
	//adds an effect
	draw_set_alpha(alpha);
	
	//draw padding outside of textbox
	draw_set_color(c_yellow);
	draw_rectangle(0, 0, display_get_gui_width(), height, false);
	
	//draw border of textbox
	draw_set_color(c_yellow);
	draw_rectangle(border, border, display_get_gui_width() - border, height - border, false);
	
	//set inside of box to black
	draw_set_color(c_black);
	draw_rectangle((border * 2), (border * 2), display_get_gui_width() - (border * 2), height - (border * 2), false);
	
	
	//drawing sprite
	
	//check if dialogue sprite is -1, so system wont fail	
	if(current_dialog.sprite != -1)
	{
		draw_sprite(current_dialog.sprite, 0, border * 3, border * 3);
	}
	
	//draw the text, 16 can be how much can be between left and bottom, 192 is left and right then wrap
	draw_set_color(c_white);
	draw_set_font(dialogueFont);
	draw_text_ext(text_x, text_y, current_dialog.message, 50, display_get_gui_width() - 300);
	
	//change alpha 0 to 1 over time
	alpha = lerp(alpha, 1, 0.06);
}
//resets alpha
draw_set_alpha(1);



