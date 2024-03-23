event_inherited()

if !morto
{
	mp_potential_step(obj_player.x,obj_player.y,spd, true)
	is_moving = true
	flip_image(x > obj_player.x)
	taken_damage()
} else {
	image_alpha-=0.005;
	if image_alpha == 0
		instance_destroy(self)
}



