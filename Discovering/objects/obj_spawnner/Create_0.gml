/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 721B99A0
/// @DnDArgument : "expr" "180"
/// @DnDArgument : "var" "spawnRate"
spawnRate = 180;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 53CB859B
/// @DnDArgument : "steps" "spawnRate"
alarm_set(0, spawnRate);