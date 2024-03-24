event_inherited();

function draw_lifebar()
{
	draw_set_color(c_white)
	draw_set_alpha(1)
	draw_rectangle(x - 15, y - 15*abs(image_xscale), x - 15 + 30, y - 15*abs(image_yscale), 0)	

	draw_set_color(c_green)
	draw_set_alpha(1)
	draw_rectangle(x - 15, y - 15*abs(image_xscale), x - 15 + (life/maxlife)*30, y - 15*abs(image_yscale), 0)	
}

function taken_damage()
{
	for(var _i = 0; _i < instance_number(obj_class_bullet); _i++)
	{
		var _blt = instance_find(obj_class_bullet,_i)
		if place_meeting(x,y,_blt) && !is_taken_hit
		{
			self.life-=(obj_class_entity.weapon_equiped.damage-self.defense*0.5) + 1
			self.image_blend = c_red
			instance_destroy(_blt)
			alarm[0] = 3
			global.lastdamage = round((obj_class_entity.weapon_equiped.damage-self.defense*0.5) + 1)
			if !instance_exists(obj_emmiter_text)
				instance_create_depth(x,y - 32,-y*2,obj_emmiter_text)
			is_taken_hit = true
		}
	}
}
