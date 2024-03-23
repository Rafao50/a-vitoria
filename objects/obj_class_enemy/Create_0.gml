event_inherited();

function taken_damage()
{
	for(var _i = 0; _i < instance_number(obj_class_bullet); _i++)
	{
		var _blt = instance_find(obj_class_bullet,_i)
		if place_meeting(x,y,_blt)
		{
			self.life-=obj_class_entity.weapon_equiped.damage
			self.image_blend = c_red
			instance_create_depth(x,y,-99999,obj_emmiter_text)
			instance_destroy(_blt)
			alarm[0] = 3
		}
	}
}
