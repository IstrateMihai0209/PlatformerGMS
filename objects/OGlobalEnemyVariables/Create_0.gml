/// @description Constructor

for(var i = 0; i < 200; i++)
{
	global.Enemy_looted[i] = false;
}

for(var j = 0; j < 100; j++)
{
	global.EnemyCount[j] = 0;
}

for(var k = 0; k < 200; k++)
{
	global.enemy_state[k] = true;
}

for(var l = 0; l < 200; l++)
{
	global.EnemiesDeadInRoom[l] = false;
}

#region Dark Forest

global.EnemyCount[1] = 0;
global.EnemyCount[2] = 0;
global.EnemyCount[3] = 0;
global.EnemyCount[4] = 7;
global.EnemyCount[5] = 12;
global.EnemyCount[6] = 27;
global.EnemyCount[7] = 45;
global.EnemyCount[8] = 45;
global.EnemyCount[9] = 45;
global.EnemyCount[10] = 55;
global.EnemyCount[11] = 66;
global.EnemyCount[12] = 71;
global.EnemyCount[13] = 77;
global.EnemyCount[14] = 77;
global.EnemyCount[15] = 77;
global.EnemyCount[16] = 90;
global.EnemyCount[17] = 91;
global.EnemyCount[18] = 91;
global.EnemyCount[19] = 106;
global.EnemyCount[20] = 113;
global.EnemyCount[21] = 127;
global.EnemyCount[22] = 165;
global.EnemyCount[23] = 165;
global.EnemyCount[24] = 171;
global.EnemyCount[25] = 187;
global.EnemyCount[26] = 187;
global.EnemyCount[27] = 187;
global.EnemyCount[28] = 187;
//global.EnemyCount[29] = 187;
//global.EnemyCount[30] = 187;
//global.EnemyCount[31] = 187;

#endregion

global.order = 0;