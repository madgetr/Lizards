/// @description Insert description here
// You can write your code in this editor
if !surface_exists(surface) then surface = surface_create(view_wport,view_hport);

surface_set_target(surface);
draw_clear_alpha(c_black,0);
with(obj_creature)
{
	creature_legs_draw(creature);
	creature_draw(creature);
	var _scale = creature[@2]/20;
	draw_sprite_ext(spr_lizard_head,image_index,creature[@0],creature[@1],_scale,_scale,creature[@5],c_white,1)
}
surface_reset_target();