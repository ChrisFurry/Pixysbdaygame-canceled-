function play_sound(soundid,channel){
	if(audio_exists(game.soundchannel[channel])){
		if(audio_is_playing(game.soundchannel[channel]))audio_stop_sound(game.soundchannel[channel]);
	}
	game.soundchannel[channel] = soundid;
	audio_play_sound(soundid,0,false);
}