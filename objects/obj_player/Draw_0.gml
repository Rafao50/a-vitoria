event_inherited()

if !is_death
{
	var _pointer
	var _gunright = x < mouse_x ? true : false
	if _gunright
	{
		_pointer = point_direction(x,y,mouse_x,mouse_y)	
	} else {
		_pointer = point_direction(mouse_x,mouse_y,x,y)	
	}

	draw_sprite_ext(weapon_equiped.sprite, 0, x - (image_xscale*8), y + 4, image_xscale / 2, image_yscale / 2, _pointer + -image_angle, c_white, 1)

	animation_walk(7)
}