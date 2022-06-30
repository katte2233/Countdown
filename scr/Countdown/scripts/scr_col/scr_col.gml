function PlayerCollision(){
	
	var _collision = false;
	
	//Horizontal Tiles
	if (tilemap_get_at_pixel(collisionMap, x + hSpd, y))
	{
		x -= x mod TILE_SIZE
		if (sign(hSpd) == 1) x += TILE_SIZE - 1;
		hSpd = 0;
		_collision = true;
	}
	
	//Horizontal Move Commit
	x += hSpd;
	
	
	//Vertical Tiles
	if (tilemap_get_at_pixel(collisionMap, x, y + vSpd))
	{
		y -= y mod TILE_SIZE
		if (sign(vSpd) == 1) y += TILE_SIZE - 1;
		vSpd = 0;
		_collision = true;
	}
	
	//Vertical Move Commit
	y += vSpd;
	
	
	return _collision;

}