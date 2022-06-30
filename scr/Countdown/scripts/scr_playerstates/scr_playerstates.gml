// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateFree(){
	
	//Movement
	hSpd = lengthdir_x(inputMagnitude * walkSpd, inputDirection);
	vSpd = lengthdir_y(inputMagnitude * walkSpd, inputDirection);

	image_angle = point_direction(x,y,mouse_x,mouse_y);

	PlayerCollision();
	
}

function playerStateSprint(){
	
	
	
}