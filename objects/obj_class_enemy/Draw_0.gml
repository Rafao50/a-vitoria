event_inherited();

if !morto
{
	draw_set_color(c_white)
	draw_set_alpha(1)
	draw_rectangle(x - 16, y - 16*abs(image_xscale), x + 16, y - 14*abs(image_yscale), 0)

	draw_set_color(c_green)
	draw_set_alpha(1)
	draw_rectangle(x - 15, y - 15*abs(image_xscale), x - 15 + (life/maxlife)*30, y - 15*abs(image_yscale), 0)
	
	animation_walk(7)
}