// Desenhar uma caixa de diálogo

/*
draw_sprite_stretched(sBox, 0, 75, 120, 245, 60);

draw_set_font(m3x6);
draw_set_color(c_white);
//draw_rectangle(10, 10, 150, 50, false);
draw_set_color(c_white);
draw_text(60, 30, global.dialogue_text);
*/

draw_sprite(spr_box, 0, 38, 130);

// Draw headings
draw_set_font(m3x6);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);
draw_text(x+43, y+130, "Ei rapa! Daqui tu nao passa");