/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var pressed_left = keyboard_check(vk_left);
var pressed_right = keyboard_check(vk_right);
var pressed_up = keyboard_check(vk_up);
var pressed_down = keyboard_check(vk_down);

//current_direction = "";


//if(pressed_left) x = x - move_speed;
//if(pressed_right) x = x + move_speed;
//if(pressed_up) y = y - move_speed;
//if(pressed_down) y = y + move_speed;

var x_direction = pressed_right - pressed_left;

var y_direction = pressed_down - pressed_up;

move_and_collide(x_direction * move_speed, y_direction * move_speed, collision_objects)
// Verificar e definir a direção atual baseada no movimento
if (x_direction == -1) {
    set_animation("left");
    previous_direction = "left";
} else if (x_direction == 1) {
    set_animation("right");
    previous_direction = "right";
} else if (y_direction == -1) {
    set_animation("up");
    previous_direction = "up";
} else if (y_direction == 1) {
    set_animation("down");
    previous_direction = "down";
} else {
    // Quando não há movimento, usar a última direção para o idle
    if (previous_direction == "down") {
        previous_direction = "down";
        set_animation("idlingDown");
    } else if (previous_direction == "right") {
        previous_direction = "right";
        set_animation("idlingRight");
    } else if (previous_direction == "up") {
        previous_direction = "up";
        set_animation("idlingUp");
    } else if (previous_direction == "left") {
        previous_direction = "left";
        set_animation("idlingLeft");
    }
}

// Verificar se o jogador está próximo a um NPC
//var npc = instance_nearest(x, y, obj_npc);

var npc = instance_nearest(x, y, obj_guard);

if (npc != noone && point_distance(x, y, npc.x, npc.y) < 32) {
    // Mostrar uma dica para apertar o botão
    draw_text(x, y - 32, "Pressione 'E' para falar");

    // Verificar se o jogador apertou o botão 'E'
    if (keyboard_check_pressed(ord("E"))) {
        // Ativar o diálogo
        global.dialogue_text = "Olá, eu sou um NPC!";
        instance_create_layer(0, 0, "Instances", obj_dialogue);
    }
	
	if (keyboard_check_pressed(ord("E"))) {
    // Destruir o objeto de diálogo
		instance_destroy();
	}
}
