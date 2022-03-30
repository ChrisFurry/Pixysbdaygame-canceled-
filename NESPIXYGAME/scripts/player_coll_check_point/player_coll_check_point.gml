function player_coll_check_point(x,y,type){
	// Type 0 = floor, type 1 = everything
	// calculate position stuff
	x = floor(x);
	y = floor(y);
	// Position on tile
	xtile = x - (floor(x / 16) * 16);
	ytile = y - (floor(y / 16) * 16);
	// Get tile info
	var _x = tilemap_get_cell_x_at_pixel(_tm, x, y);
	var _y = tilemap_get_cell_y_at_pixel(_tm, x, y);
	var _tile = tilemap_get(_tm, _x, _y);
	var _tile2 = tile_get_index(_tile);
	if(_tile2 == false)return false;
	var flip = 1;
	var mirror = 1;
	if(tile_get_flip(_tile))flip = -1;
	if(tile_get_mirror(_tile))mirror = -1;
	//tempTileData_Mirror = (mirror == -1);
	//tempTileData_Flip = (flip == -1);
	var tileheight = game.tileheightmap[_tile2];
}