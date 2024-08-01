/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var shadow_width = 20;
var shadow_height = 6;
var shadow_alpha = 0.5;

// Ajusta a posição da sombra para levar em conta a origem central do personagem
var shadow_x = (x - shadow_width / 2) - 1; // Subtrai metade da largura da sombra para centralizar
var shadow_y = y + sprite_height / 2 - shadow_height; // Ajusta a posição vertical da sombra


draw_set_color(c_black);
draw_set_alpha(shadow_alpha); // Define a opacidade da sombra
draw_ellipse(shadow_x, shadow_y, shadow_x + shadow_width, shadow_y + shadow_height, false);

function bound(index, bounds) 
{
	if (index < bounds[0] or index > bounds[1] + 0.99)
	{
		return bounds[0];	
	}
	
	return index;
}

image_index = bound(image_index, animation_frames);

draw_self(); 
