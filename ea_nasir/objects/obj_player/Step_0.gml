/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var pressed_left = keyboard_check(vk_left);
var pressed_right = keyboard_check(vk_right);
var pressed_up = keyboard_check(vk_up);
var pressed_down = keyboard_check(vk_down);

//if(pressed_left) x = x - move_speed;
//if(pressed_right) x = x + move_speed;
//if(pressed_up) y = y - move_speed;
//if(pressed_down) y = y + move_speed;

var x_direction = pressed_right - pressed_left;

var y_direction = pressed_down - pressed_up;

move_and_collide(x_direction * move_speed, y_direction * move_speed, collision_objects)

if (x_direction == -1)		set_animation("left");
else if (x_direction == 1)	set_animation("right");
else if (y_direction == -1) set_animation("up");
else if (y_direction == 1)	set_animation("down");
else						set_animation("idling");