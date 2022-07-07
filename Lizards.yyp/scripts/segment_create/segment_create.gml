/// @function  segment_create(x, y, width, legs, angle)
/// @param     x            
/// @param     y            
/// @param     width    
/// @param     legs   
/// @param     angle   
function segment_create() {

	var _x = argument[0];
	var _y = argument[1];
	var _width = argument[2];
	var _next_segment = -1;
	var _legs = -1;
	var _angle = argument[4];
	if argument[3] then _legs = legs_create(_x,_y,_angle);
	return [_x,_y,_width, _next_segment, _legs, _angle];


}
