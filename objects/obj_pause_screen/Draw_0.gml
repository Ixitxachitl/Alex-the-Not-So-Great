/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 080929E1
/// @DnDArgument : "function" "shader_set"
/// @DnDArgument : "arg" "shader_bw"
shader_set(shader_bw);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 1A2A8167
/// @DnDArgument : "font" "fnt_copgothiclt"
/// @DnDSaveInfo : "font" "7a5cc67a-442c-4bcb-83f1-3c559723e2f6"
draw_set_font(fnt_copgothiclt);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 164B20FB
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 6CCE281B
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 4AE59E14
/// @DnDArgument : "x" "room_width/2"
/// @DnDArgument : "y" "room_height/2"
/// @DnDArgument : "xscale" "4"
/// @DnDArgument : "yscale" "4"
/// @DnDArgument : "caption" ""Pause""
draw_text_transformed(room_width/2, room_height/2, string("Pause") + "", 4, 4, 0);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0259B1A6
/// @DnDArgument : "function" "shader_reset"
shader_reset();