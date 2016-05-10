/// scr_endpoint_reaction(player_active);

player_active = argument0;

if(distance_to_object(player_active) < 50){
    if(image_index < 4){
        image_index++;
    }
} else if((image_index < 6) && !(image_index == 0)){
    image_speed = 0.5;
}else {
    image_index = 0;
    image_speed = 0;
}
