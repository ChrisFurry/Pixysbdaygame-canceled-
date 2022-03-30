/// @description INIT
// Identification
characterID	= 0; // Which Character you playin as

// Speed Variables
velX		= 0; // X Velocity
velY		= 0; // Y Velocity
intertia	= 0; // lol sonic stuff

// Movement Constants
accel		= $1A;
accelrun	= $2C;
decel		= $1A;
decelskid	= $2C;
walkvel		= $200;
runvel		= $630;

// Air Constants
jumphigh	= $800;
jumplow		= $200;
grav		= $44;
velYCap		= $600;

// State stuff
routine		= player_routine_common; // Routine of scripts to go through
status		= player_status_normal; // Status, what is played

// Animation Variables
anim				= -1; // Current animation playing
frame				= 0; // Current sprite frame
aniframe			= 0; // Current animation frame
nextAni				= playerAni.walk; // Next animation
timeFrame			= 0; // Delay until next frame
defTimeFrame		= 0; // Default delay until next frame
delayAni			= 0; // Delay until next animation
aniLength			= 0; // Animation length
dir					= 1; // Direction the player is facing
player_animationscripts();
current_aniscript	= chrisanimationscripts; // Holds the current array of scripts
// Animation Enum
enum playerAni {
	idle,
	lookup,
	crouch,
	walk,
	run,
	jump,
	fall,
}
#macro afEnd			-1 // End of animation, goes to frame 0
#macro afBack			-2 // Goes back a set amount of frames
#macro afChange			-3 // Changes the animation
#macro afRoutine		-4 // Changes Routine
#macro afReset			-5 // Resets the 
#macro af2ndRoutine		-6 // Changes Routine2

// Sensor stuff
width		= 7;
height		= 16;
hitWid		= 6;
hitHei		= 12;
hitY		= 0;
grounded	= false;

// Buffers
invframes	= 0;
landbuffer	= 0;

// Flags
crouching	= false;

// Input
input = -1;

// Stupid gamemaker stuff
image_speed = 0;