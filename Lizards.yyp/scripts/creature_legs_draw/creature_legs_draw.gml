/// @function     creature_draw(creature)
/// @description  Draws a creature
/// @param        creature 
function creature_legs_draw(_creature) {

	var _segment = _creature;
	if !is_array(_segment) then exit;
	var _next_segment = _segment[3];
	if is_array(_next_segment) then 
	{
		creature_legs_draw(_next_segment);
	}

	var _legs = _segment[@4];
	if is_array(_legs) then 
	{
		legs_draw(_legs,_segment[@0], _segment[@1],_segment[@5]);
	}


}
