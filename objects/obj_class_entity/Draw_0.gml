

if morto
{
	image_blend = c_red
	image_speed = 0
	image_angle = 90
}

draw_set_color(c_black)
draw_set_alpha(0.15)
draw_ellipse(x - sprite_get_height(sprite_index) / 2, y + 8*scale  , x + sprite_get_height(sprite_index) / 2, y + 20*scale, 0)
draw_self()

