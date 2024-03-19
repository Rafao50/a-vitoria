//draw_rectangle(x - 16, y - 16, x + 16, y + 16, 0)
draw_self()

var _gunright = x < mouse_x ? true : false
if _gunright
{
	var _pointer = point_direction(x,y,mouse_x,mouse_y)	
} else {
	var _pointer = point_direction(mouse_x,mouse_y,x,y)	
}

draw_sprite_ext(spr_gun, 0, x - (image_xscale*8), y + 4, image_xscale / 2, image_yscale / 2, _pointer, c_white, 1)

