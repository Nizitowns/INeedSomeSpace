///scr_artifact_follow(player)

player = argument0;
player_rot = player.phy_rotation;
phy_position_x = player.phy_position_x;
phy_position_y = player.phy_position_y;
phy_rotation = -(player_rot % 360) - 270;
