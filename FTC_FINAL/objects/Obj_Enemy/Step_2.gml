/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 253776FB
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
if(move_y < 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 45AECF90
	/// @DnDParent : 253776FB
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "Spr_enemy"
	/// @DnDSaveInfo : "spriteind" "Spr_enemy"
	sprite_index = Spr_enemy;
	image_index += 0;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6884A343
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collison_tilemap"
var l6884A343_0 = instance_place(x + 0, y + 2, [collison_tilemap]);if ((l6884A343_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D199C2D
	/// @DnDParent : 6884A343
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6EFB7303
		/// @DnDParent : 1D199C2D
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Spr_enemy"
		/// @DnDSaveInfo : "spriteind" "Spr_enemy"
		sprite_index = Spr_enemy;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 057809EC
		/// @DnDParent : 1D199C2D
		/// @DnDArgument : "xscale" "-1 * abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = -1 * abs(image_xscale);image_yscale = image_yscale;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0DDFB8A1
	/// @DnDParent : 6884A343
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(move_x >= 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3F696D5C
		/// @DnDParent : 0DDFB8A1
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Spr_enemy"
		/// @DnDSaveInfo : "spriteind" "Spr_enemy"
		sprite_index = Spr_enemy;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 437F8B37
		/// @DnDParent : 0DDFB8A1
		/// @DnDArgument : "xscale" "abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = abs(image_xscale);image_yscale = image_yscale;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3FB55DE6
	/// @DnDParent : 6884A343
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0C8F71D5
		/// @DnDParent : 3FB55DE6
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Spr_enemy"
		/// @DnDSaveInfo : "spriteind" "Spr_enemy"
		sprite_index = Spr_enemy;
		image_index += 0;}}