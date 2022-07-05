// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateFree(){
	
	//Movement
	hSpd = lengthdir_x(inputMagnitude * walkSpd, inputDirection);
	vSpd = lengthdir_y(inputMagnitude * walkSpd, inputDirection);

	image_angle = point_direction(x,y,Obj_cursor.x,Obj_cursor.y);
	
	//Collision
	PlayerCollision();
	
	//Change State
	if (keyRoll)
	{
		state = playerStateRoll;
		rollDistanceRemaining = rollDistance;
	}
	
}

function playerStateSprint(){
	
	
	
}

function playerStateRoll(){
	
	//Under konstruktion...
	
	//Movement
	hSpd = lengthdir_x(rollSpd, direction);
	vSpd = lengthdir_y(rollSpd, direction);
	
	rollDistanceRemaining = max(0, rollDistanceRemaining - rollSpd);
	var _collided = PlayerCollision();
	
	//Update Sprite
	sprite_index = spriteRoll;
	var _totalFrames = sprite_get_number(sprite_index)/4;
	
}

function playerStateCrawl(){
	
	
	
}