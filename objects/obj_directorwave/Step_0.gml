if instance_number(obj_class_enemy) == 0
{
	enemy_count*=2
	for(var _i = 0; _i < enemy_count; _i++)
	{
		var _en = choose(obj_meat_crawler,obj_meat_crawler_bulk,obj_slime)
		instance_create_depth(random(room_width),random(room_height),0, _en)	
	}
	wave_current++
}