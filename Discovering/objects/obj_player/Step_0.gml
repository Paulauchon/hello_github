/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 05CDF6BC
var l05CDF6BC_0;
l05CDF6BC_0 = mouse_check_button(mb_left);
if (l05CDF6BC_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 620DF182
	/// @DnDParent : 05CDF6BC
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	if(cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 46B65BC3
		/// @DnDParent : 620DF182
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_bomb"
		/// @DnDArgument : "layer" ""Layer_Bullet""
		/// @DnDSaveInfo : "objectid" "15b13262-0bfb-449b-9ba1-61d31ea9ce50"
		instance_create_layer(x + 0, y + 0, "Layer_Bullet", obj_bomb);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
		/// @DnDVersion : 1
		/// @DnDHash : 260A8C9E
		/// @DnDParent : 620DF182
		/// @DnDArgument : "sound" "snd_fireball"
		/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
		/// @DnDSaveInfo : "sound" "05113edd-d75d-4ac8-ac7b-a3f1b2236654"
		audio_sound_pitch(snd_fireball, random_range(0.8,1.2));
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 6D388937
		/// @DnDParent : 620DF182
		/// @DnDArgument : "soundid" "snd_fireball"
		/// @DnDSaveInfo : "soundid" "05113edd-d75d-4ac8-ac7b-a3f1b2236654"
		audio_play_sound(snd_fireball, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0657D2B5
		/// @DnDParent : 620DF182
		/// @DnDArgument : "expr" "20"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 20;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0B6B7C6C
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;