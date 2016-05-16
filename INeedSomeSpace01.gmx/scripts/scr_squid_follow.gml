/// scr_squid_follow(player_object);
randomize();
player = argument0;
spd = 4;
var dir     = point_direction(x,y,player.x + choose(-40, +40), player.y+ choose(-40, +40));
var hspd    = lengthdir_x(spd, dir);
var vspd    = lengthdir_y(spd, dir);

phy_position_x += hspd;
phy_position_y += vspd;
