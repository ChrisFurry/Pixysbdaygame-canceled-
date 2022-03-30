function ani_create(array,position,aniSpeed,frames){
	var _animList = [aniSpeed,frames];
	if(argument_count > 4){
		var u = 1;
		for(var i = 4;i < argument_count;i ++){
			u ++;
			_animList[u] = argument[i];
		}
	}
	array_set(array,position,_animList);
}