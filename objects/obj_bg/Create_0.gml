/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 68D794E3
/// @DnDArgument : "steps" "3"
alarm_set(0, 3);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2FEBD5B8
/// @DnDArgument : "var" "variation"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
var variation = floor(random_range(0, 1 + 1));

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 6F306D4E
/// @DnDArgument : "expr" "variation"
var l6F306D4E_0 = variation;
switch(l6F306D4E_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 29656407
	/// @DnDParent : 6F306D4E
	case 0:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3A1FB1F4
		/// @DnDParent : 29656407
		/// @DnDArgument : "spriteind" "spr_cloud_1"
		/// @DnDSaveInfo : "spriteind" "9c9e2f63-b761-4a97-9b54-c965040b5cb1"
		sprite_index = spr_cloud_1;
		image_index = 0;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 189700FC
	/// @DnDParent : 6F306D4E
	/// @DnDArgument : "const" "1"
	case 1:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 5B01A933
		/// @DnDParent : 189700FC
		/// @DnDArgument : "spriteind" "spr_cloud_2"
		/// @DnDSaveInfo : "spriteind" "f629201f-6e69-4ec9-9b39-867f45591f41"
		sprite_index = spr_cloud_2;
		image_index = 0;
		break;

	/// @DnDAction : YoYo Games.Switch.Default
	/// @DnDVersion : 1
	/// @DnDHash : 5B1C4B80
	/// @DnDParent : 6F306D4E
	default:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1ACFEE39
		/// @DnDParent : 5B1C4B80
		/// @DnDArgument : "spriteind" "spr_cloud_1"
		/// @DnDSaveInfo : "spriteind" "9c9e2f63-b761-4a97-9b54-c965040b5cb1"
		sprite_index = spr_cloud_1;
		image_index = 0;
		break;
}