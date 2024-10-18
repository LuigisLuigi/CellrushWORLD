// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_collision(){
	var _collision = false;
	
	//horizontal titles
	if (tilemap_get_at_pixel(collision_map, x + h_speed, y))
	{
		x -= x mod TILE_SIZE;
		if (sign(h_speed) == 1) x += TILE_SIZE - 1;
		h_speed = 0;
		_collision = true;
	}
	
	//horizontal move commit
	x += h_speed;
	
	//vertical tiles
	if (tilemap_get_at_pixel(collision_map, x, y + v_speed))
	{
		y -= y mod TILE_SIZE;
		if (sign(v_speed) == 1) y += TILE_SIZE - 1;
		v_speed = 0;
		_collision = true;
	}
	
	//vertical move commit
	y += v_speed;
	
	return _collision;
	
}