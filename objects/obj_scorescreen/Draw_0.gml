/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 4E7EE133
/// @DnDArgument : "font" "fnt_copgothiclt"
/// @DnDSaveInfo : "font" "7a5cc67a-442c-4bcb-83f1-3c559723e2f6"
draw_set_font(fnt_copgothiclt);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 16CC3D29
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 260DF716
/// @DnDArgument : "x" "room_width/2"
/// @DnDArgument : "y" "room_height/2"
/// @DnDArgument : "xscale" "2"
/// @DnDArgument : "yscale" "2"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "global.dist_score"
draw_text_transformed(room_width/2, room_height/2, "" + string(global.dist_score), 2, 2, 0);