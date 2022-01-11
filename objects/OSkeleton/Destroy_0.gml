/// @description Drop Loot

global.enemy_state[order] = false;
global.EnemiesDeadInRoom[room] = true;

if(global.Enemy_looted[order] == false)
{
	enemy_drop();
}

global.Enemy_looted[order] = true;