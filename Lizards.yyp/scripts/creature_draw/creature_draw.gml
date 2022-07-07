/// @function     creature_draw(creature)
/// @description  Draws a creature
/// @param        creature 
function creature_draw() {

	var _creature = argument[0];
	var _segment = _creature;
	if !is_array(_segment) then exit;

	var _angle = _segment[@5];
	var _w = _segment[@2];
	var _next_segment = _segment[@3];
	if is_array(_next_segment) then 
	{
		var _x1,_y1,_x2,_y2,_x3,_y3,_x4,_y4;
		_x1 = _segment[@0] +(-_w* dcos( _angle+90));
		_y1 = _segment[@1] +(-_w* -dsin( _angle+90))
		_x2 = _segment[@0] +(_w* dcos( _angle+90));
		_y2 = _segment[@1] +(_w* -dsin( _angle+90));
		_x3 = _next_segment[@0] +(_next_segment[@2]*dcos(_next_segment[@5]+90));
		_y3 = _next_segment[@1] +(_next_segment[@2]*-dsin(_next_segment[@5]+90));
		_x4 = _next_segment[@0] +(-_next_segment[@2]*dcos(_next_segment[@5]+90));
		_y4 = _next_segment[@1] +(-_next_segment[@2]*-dsin(_next_segment[@5]+90));
		draw_sprite_pos(spr_lizard_skin,image_index,_x1,_y1,_x2,_y2,_x3,_y3,_x4,_y4,1);
	
		creature_draw(_next_segment);
	}


}
