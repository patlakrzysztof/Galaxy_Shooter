//wyświetla SCORE
draw_text_transformed(room_width*0.005, room_height*0.001,"SCORE:"+string(player_score),room_width*0.002, room_height*0.004, 0)

//wyświetla dodanie punktów po zniszczeniu
draw_text_transformed(point_position[0],point_position[1],"+10",point_size,point_size,0)

//wyświetla game_over
if game_over == 1
	draw_text_transformed_color((room_width/2)-room_width*0.25,(room_height/2)-room_height*0.1,"GAME OVER, restarting...",room_width*0.003,room_height*0.005,0,c_red,c_red,c_red,c_red,true);


	

//draw_text_transformed(10, 70,"BEST:",4,4, 0)
//draw_text_transformed(200, 70,obj_stats.best_player_score,4,4, 0)