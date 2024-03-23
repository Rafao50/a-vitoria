event_inherited()

life = 10
attack = 5
defense = 5
mxspd = 2
spd = mxspd
maxlife = life

weapon_equiped = weapons[0]

function shoot()
{
	var _b = instance_create_depth(x - (image_xscale*9), y + 3, 0, weapon_equiped.bullet)
	_b.speed = weapon_equiped.bulletspd
	_b.direction = point_direction(x,y,mouse_x,mouse_y)
	_b.image_xscale*=0.5
	_b.image_yscale*=0.5
	_b.image_angle = _b.direction
}

function taken_damage()
{
	for(var _i = 0; _i < instance_number(obj_class_enemy); _i++)
	{
		var _en = instance_find(obj_class_enemy,_i)
		if place_meeting(x,y,_en)
		{
			if !_en.morto
			{
				alarm[0] = 30
				self.image_blend = c_red
			}
		}
	}	
}