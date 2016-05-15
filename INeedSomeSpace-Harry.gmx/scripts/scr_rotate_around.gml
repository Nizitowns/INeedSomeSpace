///scr_rotate_around()
// Save previous center point :
ox = sprite_get_xoffset(0);
oy = sprite_get_yoffset(0);

phy_rotation -= 1;

// Correct x and y position    
var np_len = point_distance(ox,oy, sprite_get_xoffset(0), sprite_get_yoffset(0));
var np_dir = point_direction(ox,oy, sprite_get_xoffset(0), sprite_get_yoffset(0));

x = x + lengthdir_x(np_len, phy_rotation+np_dir);
y = y + lengthdir_y(np_len, phy_rotation+np_dir);

direction = phy_rotation;
