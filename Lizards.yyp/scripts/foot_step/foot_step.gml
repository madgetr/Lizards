/// @function     foot_step(foot)
/// @description  Take Footstep
/// @param        foot 
function foot_step(_foot) {
	var _dist = point_distance(_foot[@0],_foot[@1],_foot[@2],_foot[@3]);
	var _dir = point_direction(_foot[@0],_foot[@1],_foot[@2],_foot[@3]);
	if !_foot[@4] and _dist<128 then 
	{
	
		if _dist>64 then _foot[@4] = true;
	}
	else
	{
		var _spd = clamp(_dist/2,16,128);
		_foot[@0]+=(_spd*dcos(_dir));
		_foot[@1]+=(_spd*-dsin(_dir));
		if _dist<8 then _foot[@4] = false;
	}
	return _foot[@4];


}
