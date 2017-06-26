/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 6E5331A8
/// @DnDArgument : "x" "0"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "4"
/// @DnDArgument : "y_relative" "1"
x += 0;
y += 4;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 41F34022
/// @DnDArgument : "var" "obj_player"
/// @DnDArgument : "value" "spr_playerFront"
if(obj_player == spr_playerFront)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 76A57EDB
	/// @DnDParent : 41F34022
	/// @DnDArgument : "imageind" "NULL"
	/// @DnDArgument : "spriteind" "spr_playerFront"
	/// @DnDSaveInfo : "spriteind" "c9c21672-fd8c-4c1e-801b-3fd6aeb1df4b"
	sprite_index = spr_playerFront;
	image_index = NULL;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4EE7C5EF
/// @DnDArgument : "expr" "1.2"
/// @DnDArgument : "var" "image_speed"
image_speed = 1.2;