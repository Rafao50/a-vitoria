draw_set_color(make_color_hsv(90*(global.lastdamage/255), 255,255))
draw_set_alpha(1)
draw_text(x + random(4), y + life_time, global.lastdamage)
