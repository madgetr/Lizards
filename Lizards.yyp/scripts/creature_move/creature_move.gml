/// @function     creature_move(creature, speed, direction)
/// @description  Moves a creature in a direction
/// @param        creature  
/// @param        speed     
/// @param        direction 
function creature_move(_creature, _speed, _direction ) {

	segment_move(_creature,_speed,_direction);

	_creature[@0] = clamp(_creature[@0],0,room_width);
	_creature[@1] = clamp(_creature[@1],0,room_height);


}
