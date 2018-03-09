if(phy_position_y > 196)
{
	room_restart();
}

if(phy_position_x < start_x )
{
	if(phy_linear_velocity_x < 5)
	{
		phy_linear_velocity_x += 1;
	}
}

if(phy_position_x > start_x)
{
	if(phy_linear_velocity_x > 0)
	{
		phy_linear_velocity_x += -1;
	}
}

var l5A22C483_0 = instance_place(x + 0, y + 1, obj_ground_tile);
if (!(l5A22C483_0 > 0))
{
	grounded = false;

	sprite_index = spr_player_jump;
	image_index = 0;
}

var l19761489_0;
l19761489_0 = keyboard_check_pressed(vk_space);
if (l19761489_0)
{
	if(grounded)
	{
		phy_position_y += -1;
	
		sprite_index = spr_player_jump;
		image_index = 0;
	
		grounded = false;
	
		phy_linear_velocity_y = -100;
	
		audio_play_sound(snd_woof, 0, 0);
	
		phy_fixed_rotation = 0;
	
		var sp = floor(random_range(0, 1 + 1));
	
		var l67FF2340_0 = sp;
		switch(l67FF2340_0)
		{
			case 0:
				var physics_apply_local_impulse(x,y,-1.25,1);
				break;
		
			case 1:
				var physics_apply_local_impulse(x,y,2,1);
				break;
		}
	}
}

var l29266FF6_0;
l29266FF6_0 = mouse_check_button_pressed(mb_left);
if (l29266FF6_0)
{
	if(grounded)
	{
		phy_position_y += -1;
	
		sprite_index = spr_player_jump;
		image_index = 0;
	
		grounded = false;
	
		phy_linear_velocity_y = -100;
	
		audio_play_sound(snd_woof, 0, 0);
	}
}