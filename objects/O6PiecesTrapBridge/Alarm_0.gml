/// @description Break the Bridge

/*sprite_index = SBrokenTrapBridge6;
mask_index = 0;
image_speed = 15;*/

audio_play_sound(SNBridgeBreak, 750, false);
instance_destroy();