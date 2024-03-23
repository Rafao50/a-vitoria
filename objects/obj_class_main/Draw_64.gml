window_set_cursor(cr_none)
cursor_sprite = spr_mira

if obj_player.is_death
{
	depth = -display_get_gui_height()
	draw_set_alpha(0.5)
	draw_set_color(c_black)
	draw_rectangle(0,0, display_get_gui_width(), display_get_gui_height(),0)
	
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_text(room_width/2,room_height/2,"Death")
}