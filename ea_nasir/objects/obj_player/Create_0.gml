move_speed = 1;
previous_direction = "";

function set_animation(state)
{
	new_animation = variable_struct_get(animations, state);
	animation_frames = new_animation.frames;
}

animations = {
	idlingDown: { frames: [0, 0] },
	idlingUp: { frames: [3, 3]},
	idlingLeft: { frames: [6, 6]},
	idlingRight: { frames: [11, 11]},
	left:	{ frames: [7, 8, 9] },
	right:	{ frames: [10, 11, 12] },
	up:	{ frames: [4, 5, 6] },
	down:	{ frames: [1, 2, 3] },
}

collision_objects = [
	obj_inv_wall,
	obj_guard,
]

set_animation("idlingDown");
