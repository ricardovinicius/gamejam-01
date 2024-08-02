// Desenhar uma caixa de diálogo

draw_sprite_stretched(sBox, 0, 75, 120, 245, 60);

draw_set_font(m3x6);
draw_set_color(c_white);
//draw_rectangle(10, 10, 150, 50, false);
draw_set_color(c_white);
draw_text(60, 30, global.dialogue_text);


/*
draw_set_font(fnM3x6);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_gray);
draw_text(x+COLUMN_ENEMY, y+120, "ENEMY");
draw_text(x+COLUMN_NAME, y+120, "NAME");
draw_text(x+COLUMN_HP, y+120, "HP");
draw_text(x+COLUMN_MP, y+120, "MP");
*/