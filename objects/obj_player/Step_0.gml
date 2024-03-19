var _movingright = false
var _movingleft = false
var _movingdown = false
var _movingup = false

if keyboard_check(global.input.right)
{
	x+=spd
	_movingright = true
}
	
else if keyboard_check(global.input.left)
{
	x-=spd
	_movingleft = true
}
	
if keyboard_check(global.input.down)
{
	y+=spd
	_movingdown = true
}
	
else if keyboard_check(global.input.up)
{
	y-=spd
	_movingup = true
}

if (_movingright and _movingup) or (_movingleft and _movingup) or (_movingright and _movingdown) or (_movingleft and _movingdown)
	spd = mxspd / 2
else
	spd = mxspd
	
flip_image(x < mouse_x)

if mouse_check_button_pressed(global.input.attack1)
{
	audio_play_sound(snd_shoot, 10, false, 0.1, 0, random_range(0.75,1.25))
	layer_set_visible(layer_get_id("Effect_1"), true)
	var _bllt = instance_create_depth(x - (image_xscale*8), y + 4, 0, obj_bullet)
	_bllt.speed = 10
	_bllt.direction = point_direction(x,y,mouse_x,mouse_y)
	_bllt.image_xscale*=0.5
	_bllt.image_yscale*=0.5
	_bllt.image_angle = _bllt.direction
} else {
	layer_set_visible(layer_get_id("Effect_1"), false)
}