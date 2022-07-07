/// @function     legs_destination(legs, x, y, angle)
/// @description  Updates where feet need to be
/// @param        legs  
/// @param        x     
/// @param        y     
/// @param        angle 
function legs_destination(_legs, _x, _y, _angle) {


	var _left = _legs[@0];
	var _right = _legs[@1];

	_right[@2] = _x+(50*dcos(_angle-45));
	_right[@3] = _y+(50*-dsin(_angle-45));

	_left[@2] = _x+(50*dcos(_angle+45));
	_left[@3] = _y+(50*-dsin(_angle+45));

	var _rf = foot_step(_right);
	var _lf = foot_step(_left);
	if _rf then _left[@4] = false;
	if _lf then _right[@4] = false;

	return [_rf,_lf];


}
