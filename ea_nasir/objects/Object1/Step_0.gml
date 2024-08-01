/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
var _key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));

var _x_input = _key_right - _key_left;
var _y_input = _key_down - _key_up;

move_and_collide(_x_input * vel_char, _y_input * vel_char, [])