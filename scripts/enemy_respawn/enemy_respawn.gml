///@description enemy_respawn();

enemy_respawn_neg = room - 2;
enemy_respawn_pos = room + 2;

global.EnemiesDeadInRoom[enemy_respawn_neg] = false;
global.EnemiesDeadInRoom[enemy_respawn_pos] = false;