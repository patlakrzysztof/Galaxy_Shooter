instance_destroy()
player_health=0;
effect_create_above(ef_firework, x, y, 1, c_red);
effect_create_above(ef_firework, x, y, 1, c_yellow);
effect_create_above(ef_smoke, x, y, 1, c_white);
//wyswietla game over i restartuje gre
obj_game.alarm[0] = 1;
