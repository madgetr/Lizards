/// @function     creature_create(body_length, tail_length)
/// @description  Creates a creature
/// @param        body_length 
/// @param        tail_length 
function creature_create(_body_length, _tail_length) {


	//Head
	var _seg = segment_create(x,y,16,false, 0);
	var _creature = _seg;
	var _next_seg = segment_create(x,y,16,true, 0);
	segment_attach(_seg,_next_seg);
	_seg = _next_seg;

	//Front Legs
	var _i = 0;
	var _half = (_body_length div 2);
	repeat(_body_length)
	{
		var _scale = 12;
		if _i > _half-2 then _scale = 14;
		if _i == _half then _scale = 12;
		if _i > _half and _i<_half+2 then _scale = 14;
		_next_seg = segment_create(x,y,_scale,false, 0);
		segment_attach(_seg,_next_seg);
		_seg = _next_seg;
		_i++;
	}

	//Hind Legs
	_next_seg = segment_create(x,y,8,true, 0);
	segment_attach(_seg,_next_seg);
	_seg = _next_seg;

	//Tail
	_i = _tail_length;
	repeat(_i)
	{
		var _next_seg = segment_create(x,y,_i,false, 0);
		segment_attach(_seg,_next_seg);
		_seg = _next_seg;
		_i--;
	}

	return _creature;


}
