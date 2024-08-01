/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

move_speed = 1;

function set_animation(state)
{
	new_animation = variable_struct_get(animations, state);
	animation_frames = new_animation.frames;
}

animations = {
	idling: { frames: [0, 0] },
	left:	{ frames: [7, 8, 9] },
	right:	{ frames: [10, 11, 12] },
	up:	{ frames: [4, 5, 6] },
	down:	{ frames: [1, 2, 3] },
}

set_animation("idling");
