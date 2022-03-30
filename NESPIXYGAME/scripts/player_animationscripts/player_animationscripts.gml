function player_animationscripts(){
	var array = array_create(1,);
	ani_create(array,playerAni.idle,$0,0,afEnd); // IDLE
	ani_create(array,playerAni.lookup,$0,1,afEnd); // LOOK UP
	ani_create(array,playerAni.crouch,$0,2,afEnd); // LOOK DOWN
	ani_create(array,playerAni.walk,$FF,3,4,5,6,7,8,afEnd); // WALK
	ani_create(array,playerAni.run,$FF,9,$A,$B,afEnd); // RUN
	ani_create(array,playerAni.jump,$A,$C,$D,$E,$F,afBack,1); // JUMP
	ani_create(array,playerAni.fall,$A,$10,afEnd); // FALL
	
	chrisanimationscripts = array;
}