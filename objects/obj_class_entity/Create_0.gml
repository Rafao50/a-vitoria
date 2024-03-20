life = 0;
attack = 0;
defense = 0;
spd = 0;
scale = 1

function flip_image(_cond)
{
	if _cond
		image_xscale = -scale
	else
		image_xscale = scale
}
