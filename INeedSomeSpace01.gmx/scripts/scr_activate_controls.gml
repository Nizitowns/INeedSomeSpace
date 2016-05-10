/// scr_activate_controls(thrust, active_joy, player_object);
thrust = argument0;
active_joy = argument1;
player_object = argument2;


thrust_key   =   keyboard_check(thrust);
if(gamepad_is_connected(active_joy)){
    thrust_joy = gamepad_button_check(active_joy, gp_face1);
}else{
    thrust_joy = noone;
}

if(obj_control.round_started && (thrust_key || thrust_joy)){
    instance_create(x,y,player_object);
    instance_destroy();
}
