draw_self();

draw_set_font(menuFont);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, buttonText);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_font(defaultFont);
