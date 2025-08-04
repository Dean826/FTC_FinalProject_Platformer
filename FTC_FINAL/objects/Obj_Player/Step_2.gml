/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 02579A97
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
if(move_y < 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 65F20DA2
	/// @DnDParent : 02579A97
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "Spr_player_jump"
	/// @DnDSaveInfo : "spriteind" "Spr_player_jump"
	sprite_index = Spr_player_jump;
	image_index += 0;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 36E0B2C9
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collison_tilemap"
var l36E0B2C9_0 = instance_place(x + 0, y + 2, [collison_tilemap]);if ((l36E0B2C9_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 732965CE
	/// @DnDParent : 36E0B2C9
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 55459253
		/// @DnDParent : 732965CE
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Spr_Player_walk"
		/// @DnDSaveInfo : "spriteind" "Spr_Player_walk"
		sprite_index = Spr_Player_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 2608C124
		/// @DnDParent : 732965CE
		/// @DnDArgument : "xscale" "-1 * abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = -1 * abs(image_xscale);image_yscale = image_yscale;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 79DDF5EA
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(move_x >= 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 35134250
	/// @DnDParent : 79DDF5EA
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "Spr_Player_walk"
	/// @DnDSaveInfo : "spriteind" "Spr_Player_walk"
	sprite_index = Spr_Player_walk;
	image_index += 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 519F2B32
	/// @DnDParent : 79DDF5EA
	/// @DnDArgument : "xscale" "abs(image_xscale)"
	/// @DnDArgument : "yscale" "image_yscale"
	image_xscale = abs(image_xscale);image_yscale = image_yscale;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6E857B5E
/// @DnDArgument : "var" "move_x"
if(move_x == 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3E165727
	/// @DnDParent : 6E857B5E
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "Spr_Player_Idle"
	/// @DnDSaveInfo : "spriteind" "Spr_Player_Idle"
	sprite_index = Spr_Player_Idle;
	image_index += 0;}