if is_death
{
	image_blend = c_red
	image_index = 0
	image_speed = 0
	if self.rotate_death
		image_angle = 90
} else
{
	draw_shadows()
}
draw_self()