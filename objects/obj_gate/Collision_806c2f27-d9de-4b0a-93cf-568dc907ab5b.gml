/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6B1EE6CE
/// @DnDArgument : "expr" "40"
/// @DnDArgument : "var" "phy_linear_velocity_x"
phy_linear_velocity_x = 40;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1ECE126E
/// @DnDApplyTo : other
/// @DnDArgument : "expr" "- 10"
/// @DnDArgument : "var" "phy_linear_velocity_x"
with(other) {
phy_linear_velocity_x = - 10;

}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5FEDD082
/// @DnDArgument : "objectid" "obj_screen_shake"
/// @DnDArgument : "layer" ""lyr_bg""
/// @DnDSaveInfo : "objectid" "59ad2d96-c343-43ea-a3a8-819b4a39511b"
instance_create_layer(0, 0, "lyr_bg", obj_screen_shake);