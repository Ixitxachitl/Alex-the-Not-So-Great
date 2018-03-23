/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2D88D393
/// @DnDArgument : "xpos" "camera_get_view_width(view_get_camera(0))+64"
/// @DnDArgument : "var" "hill2"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_hill"
/// @DnDArgument : "layer" ""lyr_hill""
/// @DnDSaveInfo : "objectid" "807eb79b-829a-474f-9a06-f621300e6506"
var hill2 = instance_create_layer(camera_get_view_width(view_get_camera(0))+64, 0, "lyr_hill", obj_hill);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5E259326
/// @DnDArgument : "expr" "-48"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "hill2.phy_position_y"
hill2.phy_position_y += -48;