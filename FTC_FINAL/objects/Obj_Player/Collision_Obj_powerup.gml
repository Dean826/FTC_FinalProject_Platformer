/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7B619E91
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "Bullet_check"
Bullet_check = 1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 2D55D113
/// @DnDArgument : "soundid" "Powerup_sound"
/// @DnDSaveInfo : "soundid" "Powerup_sound"
audio_play_sound(Powerup_sound, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6C27D262
/// @DnDApplyTo : other
with(other) instance_destroy();