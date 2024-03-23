life = 0
attack = 0
defense = 0
spd = 0
scale = 1
direction_walk = 1

rotate_death = true
is_death = false
is_taken_hit = false
is_moving = false

maxlife = life

pistol = {
	damage : 5,
	attackspd : 5,
	bulletspd : 10,
	ammo : 0,
	bullet : obj_bullet_pistol,
	sprite: spr_gun
}

shotgun = {
	damage : 10,
	attackspd : 3,
	bulletspd : 10,
	ammo : 5,
	bullet : obj_bullet_shotgun,
	sprite : spr_shotgun
}

machinegun = {
	damage : 7,
	attackspd : 10,
	bulletspd : 10,
	ammo : 20,
	bullet : obj_bullet_machinegun,
	sprite : spr_machinegun
}

rpg = {
	damage : 15,
	attackspd : 20,
	bulletspd : 10,
	ammo : 2,
	bullet : obj_bullet_rpg,
	sprite : spr_rpg
}

rayblade = {
	damage : 20,
	attackspd : 1,
	bulletspd : 10,
	ammo : 5,
	bullet : obj_bullet_rayblade,
	sprite : spr_rayblade
}

weapons = [pistol, shotgun, machinegun, rpg, rayblade]

function flip_image(_cond)
{
	if _cond
		image_xscale = -scale
	else
		image_xscale = scale
}

function death()
{
	is_death = true
}

function draw_shadows()
{
	draw_set_color(c_black)
	draw_set_alpha(0.15)
	draw_ellipse(x - sprite_get_height(sprite_index) / 2, y + 8*scale  , x + sprite_get_height(sprite_index) / 2, y + 20*scale, 0)	
}

function animation_walk(_angle)
{
	if is_moving
	{
		if direction_walk = 1
		{
			image_angle--;
			if image_angle = -_angle
			{
				direction_walk = -1
			}
		} else {
			image_angle++;	
			if image_angle = _angle
			{
				direction_walk = 1
			}
		}
	} else 
		image_angle = 0	
}