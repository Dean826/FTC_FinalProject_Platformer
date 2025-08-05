/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0FACBC3B
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 64417CC1
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "move_x * walk_speed"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 1D275FCE
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collison_tilemap"
var l1D275FCE_0 = instance_place(x + 0, y + 2, [collison_tilemap]);if ((l1D275FCE_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2EEF22C5
	/// @DnDParent : 1D275FCE
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 0BE4BAA5
	/// @DnDDisabled : 1
	/// @DnDParent : 1D275FCE
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 33DCB6BE
	/// @DnDDisabled : 1
	/// @DnDParent : 0BE4BAA5
	/// @DnDArgument : "expr" "-jump_speed"
	/// @DnDArgument : "var" "move_y"}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6804C80F
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 34F22832
	/// @DnDParent : 6804C80F
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 336A9618
		/// @DnDParent : 34F22832
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;}}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 5E66BBBF
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "collison_tilemap"
move_and_collide(move_x, move_y, collison_tilemap,4,0,0,walk_speed,jump_speed);

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 1F138DC6
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collison_death"
var l1F138DC6_0 = instance_place(0, y + 2, [collison_death]);if ((l1F138DC6_0 > 0)){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3C9CAEA4
	/// @DnDApplyTo : {Obj_Enemy}
	/// @DnDParent : 1F138DC6
	with(Obj_Enemy) instance_destroy();}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 770FE475
/// @DnDArgument : "x" "x + (25 * sign(move_x))"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collison_tilemap"
var l770FE475_0 = instance_place(x + (25 * sign(move_x)), y + 0, [collison_tilemap]);if ((l770FE475_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0242B785
	/// @DnDParent : 770FE475
	/// @DnDArgument : "expr" "-jump_speed"
	/// @DnDArgument : "var" "move_y"
	move_y = -jump_speed;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 03DE6D48
/// @DnDArgument : "x" "x + (30 * sign(move_x))"
/// @DnDArgument : "y" "y + 50"
/// @DnDArgument : "object" "collison_tilemap"
/// @DnDArgument : "not" "1"
var l03DE6D48_0 = instance_place(x + (30 * sign(move_x)), y + 50, [collison_tilemap]);if (!(l03DE6D48_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0604B871
	/// @DnDParent : 03DE6D48
	/// @DnDArgument : "expr" "move_x * -1"
	/// @DnDArgument : "var" "move_x"
	move_x = move_x * -1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 000BB4C1
	/// @DnDParent : 03DE6D48
	/// @DnDArgument : "expr" "-jump_speed"
	/// @DnDArgument : "var" "move_y"
	move_y = -jump_speed;}