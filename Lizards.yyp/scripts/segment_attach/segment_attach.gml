/// @function  segment_attach(segment_head, segment_tail)
/// @param     segment_head 
/// @param     segment_tail 
function segment_attach(_segment_head, _segment_tail) {

	_segment_head[@ 3] = _segment_tail;

	//Update position
	var _w = _segment_head[@2];
	var _ang = _segment_head[@5];
	var _nx = _segment_head[@0]+(_w*dcos(_ang-180));
	var _ny = _segment_head[@1]+(_w*-dsin(_ang-180));

	_segment_tail[@0] = _nx;
	_segment_tail[@1] = _ny;



}
