/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3CED1CB6
/// @DnDArgument : "var" "x  + sprite_width "
/// @DnDArgument : "op" "3"
if(x  + sprite_width  <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F2415CD
	/// @DnDParent : 3CED1CB6
	/// @DnDArgument : "expr" "room_width + sprite_width"
	/// @DnDArgument : "var" "x"
	x = room_width + sprite_width;

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 00815DAE
	/// @DnDParent : 3CED1CB6
	/// @DnDArgument : "var" "variation"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	var variation = floor(random_range(0, 1 + 1));

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 73F39D51
	/// @DnDParent : 3CED1CB6
	/// @DnDArgument : "expr" "variation"
	var l73F39D51_0 = variation;
	switch(l73F39D51_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 17FEC4E3
		/// @DnDParent : 73F39D51
		case 0:
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 2580C2ED
			/// @DnDParent : 17FEC4E3
			/// @DnDArgument : "spriteind" "spr_cloud_1"
			/// @DnDSaveInfo : "spriteind" "9c9e2f63-b761-4a97-9b54-c965040b5cb1"
			sprite_index = spr_cloud_1;
			image_index = 0;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 27CFA065
		/// @DnDParent : 73F39D51
		/// @DnDArgument : "const" "1"
		case 1:
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 66D0D0A3
			/// @DnDParent : 27CFA065
			/// @DnDArgument : "spriteind" "spr_cloud_2"
			/// @DnDSaveInfo : "spriteind" "f629201f-6e69-4ec9-9b39-867f45591f41"
			sprite_index = spr_cloud_2;
			image_index = 0;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Default
		/// @DnDVersion : 1
		/// @DnDHash : 2F5C187B
		/// @DnDParent : 73F39D51
		default:
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 300B13EB
			/// @DnDParent : 2F5C187B
			/// @DnDArgument : "spriteind" "spr_cloud_1"
			/// @DnDSaveInfo : "spriteind" "9c9e2f63-b761-4a97-9b54-c965040b5cb1"
			sprite_index = spr_cloud_1;
			image_index = 0;
			break;
	}
}