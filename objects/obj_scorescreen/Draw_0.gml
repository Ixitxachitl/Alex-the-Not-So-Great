/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 4E7EE133
/// @DnDArgument : "font" "fnt_free_pixel"
/// @DnDSaveInfo : "font" "5d7dd24f-2754-4110-b09a-856815bb56e2"
draw_set_font(fnt_free_pixel);

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
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "text" "global.dist_score"
draw_text_transformed(room_width/2, room_height/2, string("Score: ") + string(global.dist_score), 2, 2, 0);