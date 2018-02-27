/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 5BE9F140
/// @DnDArgument : "font" "fnt_free_pixel"
/// @DnDSaveInfo : "font" "5d7dd24f-2754-4110-b09a-856815bb56e2"
draw_set_font(fnt_free_pixel);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 674CDCC7
/// @DnDArgument : "color" "$FF000000"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF000000 & $ffffff);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 40B0868D
/// @DnDArgument : "alpha" ".5"
draw_set_alpha(.5);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 79DAFA80
/// @DnDArgument : "x" "camera_get_view_x(camera_def) + 2"
/// @DnDArgument : "y" "camera_get_view_y(camera_def)  +1"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "dist_score"
draw_text(camera_get_view_x(camera_def) + 2, camera_get_view_y(camera_def)  +1, string("Score: ") + string(dist_score));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 61EA48B4
/// @DnDArgument : "x" "camera_get_view_x(camera_def) + 2"
/// @DnDArgument : "y" "camera_get_view_y(camera_def)  +2"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "dist_score"
draw_text(camera_get_view_x(camera_def) + 2, camera_get_view_y(camera_def)  +2, string("Score: ") + string(dist_score));

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 4850ECDA
draw_set_colour($FFFFFFFF & $ffffff);
draw_set_alpha(($FFFFFFFF >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 51CA1436
draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 010EE7DC
/// @DnDArgument : "x" "camera_get_view_x(camera_def) + 1"
/// @DnDArgument : "y" "camera_get_view_y(camera_def)  +1"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "dist_score"
draw_text(camera_get_view_x(camera_def) + 1, camera_get_view_y(camera_def)  +1, string("Score: ") + string(dist_score));

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 4E9254AF
draw_self();