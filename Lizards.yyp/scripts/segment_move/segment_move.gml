/// @function     segment_move(segment, speed, direction)
/// @description  Moves a segment in a direction
/// @param        segment   
/// @param        speed     
/// @param        direction 
function segment_move(_segment, _speed, _direction) {

	_speed = min(_speed,16);

	if !is_array(_segment) then exit;

	var _next_segment = _segment[@3];
	if is_array(_next_segment) then
	{
		var _next_speed = _speed;//
		var _next_direction = point_direction(_next_segment[@0],_next_segment[@1],_segment[@0],_segment[@1]);
		_segment[@5] = _next_direction;
		var _pd = point_distance(_next_segment[0],_next_segment[1],_segment[0],_segment[1]);
		if _pd>_next_speed then segment_move(_next_segment,_next_speed,_next_direction);
	}
	_segment[@0] += (_speed * dcos( _direction ));
	_segment[@1] += (_speed * -dsin( _direction ));

	var _legs = _segment[@4];
	if is_array(_legs) then 
	{
		var _footsteps = legs_destination(_legs, _segment[@0], _segment[@1], _direction);
		var _wobble = (_footsteps[@1]-_footsteps[@0])*2;
		_segment[@0] += (_wobble* dcos( _direction+90 ));
		_segment[@1] += (_wobble* -dsin( _direction+90 ));
	}


}
