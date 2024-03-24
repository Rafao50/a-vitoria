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
	if image_alpha == 1
		instance_create_depth(x, y, 0, obj_emmiter_blood)

	if image_alpha > 0
		image_alpha-=0.005
		
	else
	{
		instance_destroy(self)
	}

}



