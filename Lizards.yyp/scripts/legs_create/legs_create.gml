/// @function     legs_create(x, y, angle)
/// @description  creates a pair of feet
/// @param        x 
/// @param        y 
/// @param        angle 
function legs_create(_x , _y, _angle) {

	var _legs = [
	foot_create(_x+(32*dcos(_angle+90)),_y+(32*-dsin(_angle+90))),
	foot_create(_x+(32*dcos(_angle-90)),_y+(32*-dsin(_angle-90)))]

	return _legs;


}
