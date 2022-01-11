///@description songs_and_sounds; where every sound effect and song has a variable

#region Game Sound Effects

for(var k = 0; k < 100; k++)
{
	SoundEffect[k] = noone;
}

SoundEffect[0] = SwordAttack;
SoundEffect[1] = SNHitSkeleton;
SoundEffect[2] = Jump;
SoundEffect[3] = SNHitPlayer;
SoundEffect[4] = SNBrokenBox;
SoundEffect[5] = SNGhostDisappear;
SoundEffect[6] = SNSelect;
SoundEffect[7] = SNFirespinHit;
SoundEffect[8] = SNSunburnHit;
SoundEffect[9] = SNFirespinUse;
SoundEffect[10] = SNSunburnUse;
SoundEffect[11] = SNTNTExplosion;
SoundEffect[12] = SNBridgeBreak;
SoundEffect[13] = SNSpikes;
SoundEffect[14] = SNSlimeHit;
SoundEffect[15] = SNHitBossShield;
SoundEffect[16] = SNHitOculothorax;

#endregion

#region Songs

for(var j = 0; j < 100; j++)
{
	Song[j] = noone;
}

Song[0] = NotAFriendlyForest;
Song[1] = ThisIsADarkSong;
Song[2] = Underground;
Song[3] = ULeader;

#endregion