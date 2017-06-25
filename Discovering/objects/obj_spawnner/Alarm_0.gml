/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1AF49AD5
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "obj_ennemySpawnning"
/// @DnDArgument : "layer" ""Layer_Player""
/// @DnDSaveInfo : "objectid" "dddc2a9c-ae3d-4d22-a926-874d7e18beeb"
instance_create_layer(random(room_width), random(room_height), "Layer_Player", obj_ennemySpawnning);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0BD6FEFD
/// @DnDArgument : "steps" "spawnRate"
alarm_set(0, spawnRate);