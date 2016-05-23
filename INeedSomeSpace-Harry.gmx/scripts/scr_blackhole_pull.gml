/// scr_blackhole_pull(active_player);

active_player = argument0;

if(distance_to_object(active_player) < 30){
    with(active_player){
        var dir = point_direction(x,y,obj_black_hole.x, obj_black_hole.y);
        physics_apply_force(x,y,lengthdir_x(25,dir), lengthdir_y(25,dir));
    }   
}
