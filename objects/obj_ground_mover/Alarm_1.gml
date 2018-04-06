/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2C39DAEC
/// @DnDArgument : "xpos" "camera_get_view_width(view_get_camera(0))+64"
/// @DnDArgument : "var" "hill1"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_hill"
/// @DnDArgument : "layer" ""lyr_hill""
/// @DnDSaveInfo : "objectid" "807eb79b-829a-474f-9a06-f621300e6506"
var hill1 = instance_create_layer(camera_get_view_width(view_get_camera(0))+64, 0, "lyr_hill", obj_hill);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1994BC7F
/// @DnDArgument : "expr" "-8"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "hill1.phy_position_y"
hill1.phy_position_y += -8;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5E4F0CE3
/// @DnDArgument : "xpos" "hill1.phy_position_x + 32"
/// @DnDArgument : "ypos" "hill1.phy_position_y-12"
/// @DnDArgument : "objectid" "obj_ball"
/// @DnDArgument : "layer" ""lyr_objs""
/// @DnDSaveInfo : "objectid" "22cc8c5c-a614-483d-be62-65f1f424857c"
instance_create_layer(hill1.phy_position_x + 32, hill1.phy_position_y-12, "lyr_objs", obj_ball);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6220C22B
/// @DnDArgument : "xpos" "hill1.phy_position_x-32"
/// @DnDArgument : "ypos" "hill1.phy_position_y -12"
/// @DnDArgument : "objectid" "obj_ball"
/// @DnDArgument : "layer" ""lyr_objs""
/// @DnDSaveInfo : "objectid" "22cc8c5c-a614-483d-be62-65f1f424857c"
instance_create_layer(hill1.phy_position_x-32, hill1.phy_position_y -12, "lyr_objs", obj_ball);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3D385181
/// @DnDArgument : "xpos" "hill1.phy_position_x + 0"
/// @DnDArgument : "ypos" "hill1.phy_position_y-12"
/// @DnDArgument : "objectid" "obj_ball"
/// @DnDArgument : "layer" ""lyr_objs""
/// @DnDSaveInfo : "objectid" "22cc8c5c-a614-483d-be62-65f1f424857c"
instance_create_layer(hill1.phy_position_x + 0, hill1.phy_position_y-12, "lyr_objs", obj_ball);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 285B6CF9
/// @DnDArgument : "var" "next_gate"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "400"
/// @DnDArgument : "max" "600"
next_gate = floor(random_range(400, 600 + 1));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6040AF88
/// @DnDArgument : "steps" "next_gate - obj_Player.move_speed *40"
/// @DnDArgument : "steps_relative" "1"
/// @DnDArgument : "alarm" "1"
alarm_set(1, next_gate - obj_Player.move_speed *40 + alarm_get(1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 43093284
/// @DnDArgument : "var" "second_platform"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
var second_platform = floor(random_range(0, 1 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 27A65B9A
/// @DnDArgument : "var" "second_platform"
if(second_platform == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 12F1A842
	/// @DnDParent : 27A65B9A
	/// @DnDArgument : "steps" "150 - (obj_Player.move_speed * 50)"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 150 - (obj_Player.move_speed * 50));
}