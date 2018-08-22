/// @description Set up camera
cam = view_camera[0];
follow = oPlayer;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;

/// x moving toward and y moving toward, arbitrary variable name
xTo = xstart;
yTo = ystart;
