effect_create_above(ef_explosion, x, y, 0.5, c_white);

direction = obj_player.image_angle;

if sprite_index==spr_rock_big
	big_rock_health -= 20;
	
if sprite_index==spr_rock_small
	big_rock_health -= 50;

if sprite_index == spr_rock_big
{
	if big_rock_health<=0
	{	
		//duży rozwala sie na mniejsze zmniejszając życie i kopiując się
        sprite_index = spr_rock_small;
		effect_create_above(ef_explosion, x, y, 1, c_white);
		big_rock_health = 100;
		instance_copy(true);
		direction = random(360);
	}
		
}
else if instance_number(obj_rock_small)+instance_number(obj_rock_big)<12
{
	if big_rock_health<=0
	{
//		if obj_stats.best_player_score == obj_game.player_score
//		{
//			obj_stats.best_player_score+=10;
//		}
		obj_game.player_score+=10;
		obj_game.point_position=[x,y]; //wyświetlam +10
		obj_game.point_size=2;
		obj_game.alarm[2]=20;
		big_rock_health = 100;
		effect_create_above(ef_explosion, x, y, 2, c_white);
		x = -100;
		sprite_index = spr_rock_big; //wraca do dużego
	}
}
else
{
		obj_game.point_position=[x,y];
		obj_game.alarm[2]=20; //wyświetlam +10
		obj_game.point_size=2;
		obj_game.player_score+=10;
		effect_create_above(ef_explosion, x, y, 2, c_white);
		instance_destroy(); //jeśli za dużo assetów na ekranie to niszczy się
}