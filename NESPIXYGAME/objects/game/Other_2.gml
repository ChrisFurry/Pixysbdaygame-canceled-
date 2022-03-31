/// @description Insert description here
// You can write your code in this editor
// Create geometric tables
globalvar sine, cosine;
for (var i = 360; i > -1; i --) { sine[i] = sin(degtorad(i)); cosine[i] = cos(degtorad(i)); }