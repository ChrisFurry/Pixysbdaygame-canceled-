/// @description INIT
// Identification
characterID	= 0; // Which Character you playin as

// Speed Variables
velX		= 0; // X Velocity
velY		= 0; // Y Velocity

// Constants
accel		= $98;
accelrun	= $E4;
decel		= $D0;
decelskid	= $1A0;
walkvel		= $130;
runvel		= $2900;

// State stuff
routine		= -1; // Routine of scripts to go through
status		= -1; // Status, what is played

// Animation Variables

// Buffers
invframes	= 0;