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
walkvel		= $400;
runvel		= $400;

// Air Constants
jumphigh	= $800;
jumplow		= $10;
grav		= $44;
velYCap		= $600;

// State stuff
routine		= player_routine_common; // Routine of scripts to go through
status		= player_status_normal; // Status, what is played
hurt		= false;				// Checks if the player was hurt

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
current_aniscript	= pixyanimationscripts; // Holds the current array of scripts
// Animation Enum
enum playerAni {
	idle,
	lookup,
	crouch,
	walk,
	run,
	skid,
	jump,
	fall,
	dead
}
#macro afEnd			-1 // End of animation, goes to frame 0
#macro afBack			-2 // Goes back a set amount of frames
#macro afChange			-3 // Changes the animation
#macro afRoutine		-4 // Changes Routine
#macro afReset			-5 // Resets the 
#macro af2ndRoutine		-6 // Changes Routine2

// Sensor stuff
width		= 7;
height		= 6;
hitWid		= 6;
hitHei		= 6;
hitY		= 0;
grounded	= false;
angle		= 0;

// Tile
tileLayerNames[0] = "CollTiles";
solidLayer = 0;
floor_id = false;
floor_type = "None";
floor_flip = false;
floor_mirror = false;
wall_id = false;
wall_type = "None";
ceiling_id = false;
ceiling_type = "None";
// Temp Data
tempTileData_Mirror = false;
tempTileData_Flip = false;

// Buffers
invframes	= 0;
landbuffer	= 0;

// Flags
crouching	= false;

// Input
input = -1;

// Stupid gamemaker stuff
image_speed = 0;