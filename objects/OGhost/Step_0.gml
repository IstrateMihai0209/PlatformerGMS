/// @description Player is coming close

image_xscale = dir * 2.5;

if(instance_exists(OPlayer))
{

	var distance_to_player = point_distance(OPlayer.x, y, x, y);

	if(distance_to_player < attack_range)
	{
		sprite_index = SGhostShriek;
		create_hitbox(x, y, self, SGhostShriekDamage, 1, ghost_damage, image_xscale, 0, false, OEnemyHitbox);
		hsp = 0;
	}else{/**/}

	if(distance_to_player > ready_to_attack) {/**/}
}
/*if(place_meeting(x, y, OPlayer) and onetime == 0)
{
	sprite_index = SGhostShriek;
	with(OPlayer)
	{
		if(CanGetHit == true)
		{
			hp -= other.damage;
			flash = 2;
			CanGetHit = false;
			audio_play_sound(SNHitPlayer, 50, false);
			alarm[0] = setalarm;
		}
	}
	onetime = 1;
	screen_shake(3, 3);
	flash = 2;
	hp = 0;
}*/

if(hp <= 0) {instance_change(OGhostVanish, true);}