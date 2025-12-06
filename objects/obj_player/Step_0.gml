
if keyboard_check(ord("W"))
{
        motion_add(image_angle, 0.15);
		//effect_create_below(ef_smoke,x,y,0.5,c_white)
		sprite_index=spr_player_move;
		image_speed=1;
}
else{
sprite_index=spr_player;
image_speed=0;
}
if keyboard_check(ord("S"))
{
        motion_add(image_angle+180, 0.1);
		//effect_create_below(ef_smoke,x,y,0.5,c_white)
}

if keyboard_check(ord("A"))
{
		image_angle+=2;
}
if keyboard_check(ord("D"))
{
		image_angle-=2;
}

move_wrap(true,true,0)

if mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_space)
{
        instance_create_layer(x, y, "Instances", obj_bullet)
}
if mouse_check_button(mb_right) or keyboard_check(vk_control)
{
		instance_create_layer(x, y , "Instances", obj_laser)
}