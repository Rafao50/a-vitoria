life = 0
attack = 0
defense = 0
spd = 0
scale = 1

morto = false

pistol = {
	damage : 5,
	attackspd : 5,
	bulletspd : 10,
	ammo : 0,
	bullet : obj_bullet_pistol,
	sprite: spr_pistol
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
	morto = true
	draw_sprite(spr_blood, 0, x, y)
}