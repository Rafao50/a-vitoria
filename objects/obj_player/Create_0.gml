event_inherited()

life = 10
attack = 5
defense = 5
mxspd = 2
spd = mxspd

function shoot(_bullet)
{
	var _b = instance_create_depth(x - (image_xscale*9), y + 3, 0, _bullet)
	_b.speed = 10
	_b.direction = point_direction(x,y,mouse_x,mouse_y)
	_b.image_xscale*=0.5
	_b.image_yscale*=0.5
	_b.image_angle = _b.direction
}