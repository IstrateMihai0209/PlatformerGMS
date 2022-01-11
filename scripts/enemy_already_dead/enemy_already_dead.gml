///@description enemy_already_dead();

if(global.enemy_state[order] == false and global.EnemiesDeadInRoom[room] == true)
{
	instance_destroy();
}