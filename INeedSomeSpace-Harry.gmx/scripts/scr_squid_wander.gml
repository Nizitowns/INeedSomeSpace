/// scr_squid_wander();
if(alarm[0] <= 0){
    alarm[0] = room_speed * irandom_range(4,8);
    targetx = random(room_width);
    targety = random(room_height);
    spd = irandom(2);
}
    var dir     = point_direction(x,y,targetx, targety);
    var hspd    = lengthdir_x(spd, dir);
    var vspd    = lengthdir_y(spd, dir);

    phy_position_x += hspd;
    phy_position_y += vspd;


