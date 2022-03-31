function player_coll_check_point(x,y,type){
	// Type 0 = floor, type 1 = everything
	// calculate position stuff
	x = clamp(floor(x),0,room_width);
	y = clamp(floor(y),0,room_height);
	// Get tile info
	var _tm = layer_tilemap_get_id("CollTiles");
	var _checker = objTileColl;
	if(!instance_exists(_checker)) instance_create_depth(0,0,0,_checker); 
	
	var _x = tilemap_get_cell_x_at_pixel(_tm, x, y);
	var _y = tilemap_get_cell_y_at_pixel(_tm, x, y);
	var _tile = tilemap_get(_tm, _x, _y);
	var _tile2 = tile_get_index(_tile);
	if(_tile2 == false)return {tilenumb: 0,tileangle: 0,mirror: 0,flip: 0,};
	var flip = 1;
	var mirror = 1;
	if(tile_get_flip(_tile))flip = -1;
	if(tile_get_mirror(_tile))mirror = -1;
	//tempTileData_Mirror = (mirror == -1);
	//tempTileData_Flip = (flip == -1);
	if(_tile2){
		if(_tile2 == 1){
			var tiledata = {
					tilenumb: _tile2,
					tileangle: game.tileangle[_tile2],
					mirror: (mirror == -1),
					flip: (flip == -1),
			}
			return tiledata;
		}
		
		_checker.x = (_x * tilemap_get_tile_width(_tm)) + 8;
		_checker.y = (_y * tilemap_get_tile_height(_tm)) + 8;
		_checker.image_index = _tile2;
		_checker.image_xscale = mirror;
		_checker.image_yscale = flip;

		if(instance_position(x,y,_checker)){
			var tiledata = {
					tilenumb: _tile2,
					tileangle: game.tileangle[_tile2],
					mirror: (mirror == -1),
					flip: (flip == -1),
			}
			return tiledata;
		}
	}
	return false;
}