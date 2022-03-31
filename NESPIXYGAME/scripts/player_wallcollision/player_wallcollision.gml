function player_wallcollision(x,y,xoffset,yoffset,angle,dir){
	var coll = player_checkobject(x,y,(width + 1 * dir) + xoffset,yoffset,angle,parSolid);
	if(coll){
		if(coll.solid_walls)return [coll,"Object"];
	}
	var tile = player_checktile(x,y,(width + 1 * dir) + xoffset,yoffset,angle,tileLayerNames[solidLayer]);
	if(tile){
		return [tile,"Tile"];
	}
	return [false,"None"];
}