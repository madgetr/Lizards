/// @description Insert description here
// You can write your code in this editor
if surface_exists(surface) then 
{
	var _xx,_yy;
	_xx = camera_get_view_x(view_camera[0]);
	_yy = camera_get_view_y(view_camera[0]);
	
	draw_surface_ext(surface,_xx-1,_yy-1,1,1,0,c_black,1);
	draw_surface_ext(surface,_xx,_yy-1,1,1,0,c_black,1);
	draw_surface_ext(surface,_xx+1,_yy-1,1,1,0,c_black,1);
	
	draw_surface_ext(surface,_xx-1,_yy,1,1,0,c_black,1);
	draw_surface_ext(surface,_xx+1,_yy,1,1,0,c_black,1);
	
	draw_surface_ext(surface,_xx-1,_yy+1,1,1,0,c_black,1);
	draw_surface_ext(surface,_xx,_yy+1,1,1,0,c_black,1);
	draw_surface_ext(surface,_xx+1,_yy+1,1,1,0,c_black,1);
	
	
	
	draw_surface_ext(surface,_xx,_yy+10,1,1,0,c_black,0.25);
	draw_surface(surface,_xx,_yy);
}
