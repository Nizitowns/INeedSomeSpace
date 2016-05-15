/// scr_player_spawner(player_active, player_idle);

player_active = argument0;
player_idle = argument1;

if(!instance_exists(player_active) && !instance_exists(player_idle)){
    instance_create(x,y,player_active);
}
