event_inherited();

if !is_death
{
	if position_meeting(mouse_x, mouse_y, self)
		draw_lifebar()
	animation_walk(7)
}