effect_create_above(ef_explosion, x, y, 0.5, c_white);

small_rock_health -= 50;

direction = obj_player.image_angle;

if instance_number(obj_rock_small)+instance_number(obj_rock_big)<12
{	
	if small_rock_health<=0
	{
		obj_game.point_position=[x,y];
		obj_game.point_size=2; //wyświetlam +10
		obj_game.alarm[2]=20;
		effect_create_above(ef_explosion, x, y, 1, c_white);
		x = -100;
//		if obj_stats.best_player_score == obj_game.player_score
//		{
//			obj_stats.best_player_score+=10;
//		}
		obj_game.player_score+=10;
		small_rock_health = 100;
		
	}
}
else
{
//		if obj_stats.best_player_score == obj_game.player_score
//		{	
//			obj_stats.best_player_score+=10;
//		}
		effect_create_above(ef_explosion, x, y, 1, c_white);
		obj_game.point_position=[x,y]; //wyświetlam +10
		obj_game.point_size=2;
		obj_game.alarm[2]=20;
		obj_game.player_score+=10;
		instance_destroy();
		
}