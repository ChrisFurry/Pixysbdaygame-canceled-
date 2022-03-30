function player_animate(){
	var playerspecificscript = function(){ // Ignore me unless used for player stuff
		if(object_index == objPlayer){
			if(anim == playerAni.walk || anim == playerAni.run)defTimeFrame = floor(max(0, $A - (abs(intertia) / 256)));
		}
	}
	// Grab Animation Data
	var data = current_aniscript[nextAni];
	// Check for new animation
	if(nextAni != anim){
		anim = nextAni;
		var data = current_aniscript[anim];
		aniframe = 1;
		aniLength = array_length(data);
		defTimeFrame = data[0];
		playerspecificscript();
		timeFrame = defTimeFrame;
	}
	// Delay Ani Timer && Delay Time
	//delayAni = max(delayAni - 1,0);
	timeFrame = max(timeFrame - 1,0);
	if(timeFrame <= 0){
		playerspecificscript();
		timeFrame = defTimeFrame;
		aniframe ++;
		switch(data[aniframe]){
			case afEnd: aniframe = 1; break; // Loop
			case afBack: aniframe -= data[aniframe + 1]; break; // Go back
			case afChange: nextAni = data[aniframe + 1]; aniframe --; break; // Change ani
			case afRoutine: routine = data[aniframe + 1]; aniframe --; break; // Change Routine
			case af2ndRoutine: routine2 = data[aniframe + 1]; aniframe --; break; // Change 2ndRoutine
			case afReset: aniframe --; break; // fart
		}
	}
	frame = data[aniframe];
	// Set Frame
	image_index = frame;
}