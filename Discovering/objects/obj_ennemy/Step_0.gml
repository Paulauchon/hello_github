/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4DC4F276
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "f04dbf91-bee4-457a-b86a-bdf2a7a27e6e"
var l4DC4F276_0 = false;
l4DC4F276_0 = instance_exists(obj_player);
if(l4DC4F276_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 52CC75F9
	/// @DnDParent : 4DC4F276
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5115EE21
	/// @DnDParent : 4DC4F276
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 7AE61196
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5D7A0FB6
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0183F51B
	/// @DnDApplyTo : 501d4b52-2965-448b-97aa-4940d80e979e
	/// @DnDParent : 5D7A0FB6
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "thescore"
	with(obj_score) {
	thescore += 5;
	
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 781FA38E
	/// @DnDParent : 5D7A0FB6
	/// @DnDArgument : "sound" "snd_explode"
	/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
	/// @DnDSaveInfo : "sound" "50d2adad-4090-4f27-992a-594feb808dac"
	audio_sound_pitch(snd_explode, random_range(0.8,1.2));

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 6E1ECCF3
	/// @DnDParent : 5D7A0FB6
	/// @DnDArgument : "soundid" "snd_explode"
	/// @DnDSaveInfo : "soundid" "50d2adad-4090-4f27-992a-594feb808dac"
	audio_play_sound(snd_explode, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 200CF00A
	/// @DnDParent : 5D7A0FB6
	instance_destroy();
}