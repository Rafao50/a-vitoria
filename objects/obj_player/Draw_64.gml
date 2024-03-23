draw_set_color(c_white)
draw_set_alpha(1)
draw_rectangle(16, 16, 16 * 20, 14*2, 0)

draw_set_color(c_green)
draw_set_alpha(1)
draw_rectangle(16, 16, 16 + (life/maxlife) * 305, 14*2, 0)