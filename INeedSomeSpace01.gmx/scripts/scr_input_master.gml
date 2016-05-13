/// scr_input_master(right_key, left_key, thrust_key, active_joy);
//key_active = true;
//gamepad_active = false;
right = argument0;
left = argument1;
thrust = argument2;
active_joy = argument3;
rot_spd = 8;

// Set keyboard controls
right_key   =   keyboard_check(right);
left_key    =   keyboard_check(left);
thrust_key  =   keyboard_check(thrust);

// Set Joypad controls
if(gamepad_is_connected(active_joy)){
    gamepad_set_axis_deadzone(active_joy, 0.5);
    right_joy = gamepad_axis_value(active_joy, gp_axislh) > 0;
    left_joy  = gamepad_axis_value(active_joy, gp_axislh) < 0;
    thrust_joy = gamepad_button_check(active_joy, gp_face1);
} else {
    right_joy = noone;
    left_joy  = noone;
    thrust_joy = noone;
}


// Check for input
if(!obj_control.round_end){
    if(right_key || right_joy){
        phy_angular_velocity=0;
        // Analog stick accelerated rotation
        //phy_rotation += gamepad_axis_value(active_joy, gp_axislh) * rot_spd;
        phy_rotation+=rot_spd;
    }
    
    if(left_key || left_joy){
        phy_angular_velocity=0;
        // Analog stick accelerated rotation
        //phy_rotation += gamepad_axis_value(active_joy, gp_axislh) * rot_spd;
        phy_rotation-=rot_spd;
    }
    
    if(thrust_key || thrust_joy){
        physics_apply_local_force(0, 0, 0, -50);
        instance_create(phy_position_x,phy_position_y,obj_thrusters_emitter);
        audio_play_sound(snd_jetpack_1,1,false);
    }else{
        audio_stop_sound(snd_jetpack_1);
    }
}
