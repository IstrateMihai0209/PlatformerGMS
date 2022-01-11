game_set_speed(60, gamespeed_fps);

audio_stop_all();

enemy_respawn_pos = room + 1;

global.EnemiesDeadInRoom[enemy_respawn_pos] = false;

global.player_created = true;