/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 06733877
/// @DnDApplyTo : a30985c4-4438-47f8-956b-f3dd69f3a8ce
/// @DnDArgument : "spriteind" "spr_crowd_stone"
/// @DnDSaveInfo : "spriteind" "ba0820b2-ca9e-4ff7-a6f1-dffa6ca7bde4"
with(obj_crowd) {
sprite_index = spr_crowd_stone;
image_index = 0;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 6B6AB6BA
/// @DnDApplyTo : a30985c4-4438-47f8-956b-f3dd69f3a8ce
/// @DnDArgument : "speed" "0"
with(obj_crowd) image_speed = 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 22DF285E
/// @DnDArgument : "steps" "150"
alarm_set(0, 150);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5C4BEE03
/// @DnDApplyTo : a30985c4-4438-47f8-956b-f3dd69f3a8ce
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "offscreen"
with(obj_crowd) {
offscreen = true;

}