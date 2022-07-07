/// @function     legs_draw(legs,x,y,angle)
/// @description  Draws a pair of legs
/// @param        legs  
/// @param        x  
/// @param        y
/// @param        angle
function legs_draw(_legs ,_x, _y, _angle) {

	var _left = _legs[@0];
	var _right = _legs[@1];
	var _rkneex = mean(_right[@0],_x+(16*dcos(_angle-90)));
	var _rkneey = mean(_right[@1],_y+(16*-dsin(_angle-90)));
	var _lkneex = mean(_left[@0],_x+(16*dcos(_angle+90)));
	var _lkneey = mean(_left[@1],_y+(16*-dsin(_angle+90)));
	var _rd = point_direction(_rkneex,_rkneey,_right[@0],_right[@1]);
	var _ld = point_direction(_lkneex,_lkneey,_left[@0],_left[@1]);
	draw_sprite_ext(spr_foot,image_index,_right[@0],_right[@1],2,2,_rd,c_white,1);
	draw_sprite_ext(spr_foot,image_index,_left[@0],_left[@1],2,2,_ld,c_white,1);



	draw_line_width_color(_rkneex,_rkneey,_right[@0],_right[@1],4,c_green,c_olive);
	draw_line_width_color(_rkneex,_rkneey,_x,_y,4,c_green,c_olive);

	draw_line_width_color(_lkneex,_lkneey,_left[@0],_left[@1],4,c_green,c_olive);
	draw_line_width_color(_lkneex,_lkneey,_x,_y,4,c_green,c_olive);


}
