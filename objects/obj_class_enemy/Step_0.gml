event_inherited()

if !is_death
{
	if object_index != obj_slime
		mp_potential_step(obj_player.x,obj_player.y,spd, true)
	else 
		if image_index > 2
			mp_potential_step(obj_player.x,obj_player.y,spd, true)
	is_moving = true
	flip_image(x > obj_player.x)
	taken_damage()
} else {
	image_alpha-=0.005;
	if image_alpha == 0
		instance_destroy(self)
}



