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

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4B3C10EF
/// @DnDArgument : "xpos" "hill2.phy_position_x-32"
/// @DnDArgument : "ypos" "hill2.phy_position_y -12"
/// @DnDArgument : "objectid" "obj_ball"
/// @DnDArgument : "layer" ""lyr_objs""
/// @DnDSaveInfo : "objectid" "22cc8c5c-a614-483d-be62-65f1f424857c"
instance_create_layer(hill2.phy_position_x-32, hill2.phy_position_y -12, "lyr_objs", obj_ball);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3C2B23A5
/// @DnDArgument : "xpos" "hill2.phy_position_x + 0"
/// @DnDArgument : "ypos" "hill2.phy_position_y-12"
/// @DnDArgument : "objectid" "obj_ball"
/// @DnDArgument : "layer" ""lyr_objs""
/// @DnDSaveInfo : "objectid" "22cc8c5c-a614-483d-be62-65f1f424857c"
instance_create_layer(hill2.phy_position_x + 0, hill2.phy_position_y-12, "lyr_objs", obj_ball);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5D8BFBB5
/// @DnDArgument : "xpos" "hill2.phy_position_x + 32"
/// @DnDArgument : "ypos" "hill2.phy_position_y-12"
/// @DnDArgument : "objectid" "obj_ball"
/// @DnDArgument : "layer" ""lyr_objs""
/// @DnDSaveInfo : "objectid" "22cc8c5c-a614-483d-be62-65f1f424857c"
instance_create_layer(hill2.phy_position_x + 32, hill2.phy_position_y-12, "lyr_objs", obj_ball);