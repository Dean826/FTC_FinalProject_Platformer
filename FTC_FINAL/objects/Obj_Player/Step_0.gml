/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0FACBC3B
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"
move_x = keyboard_check(vk_right) - keyboard_check(vk_left);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 366A31BE
/// @DnDArgument : "expr" "keyboard_check(vk_left) || gamepad_button_check(0,gp_padl) || (gamepad_axis_value(0,gp_axislh) < -0.2)"
/// @DnDArgument : "var" "controls_input_left"
controls_input_left = keyboard_check(vk_left) || gamepad_button_check(0,gp_padl) || (gamepad_axis_value(0,gp_axislh) < -0.2);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 09FB1111
/// @DnDArgument : "expr" "keyboard_check(vk_right) || gamepad_button_check(0,gp_padr) || (gamepad_axis_value(0,gp_axislh) > 0.2)"
/// @DnDArgument : "var" "controls_input_right"
controls_input_right = keyboard_check(vk_right) || gamepad_button_check(0,gp_padr) || (gamepad_axis_value(0,gp_axislh) > 0.2);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7ED95190
/// @DnDArgument : "expr" "controls_input_right - controls_input_left"
/// @DnDArgument : "var" "move_x"
move_x = controls_input_right - controls_input_left;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 64417CC1
/// @DnDArgument : "expr" "move_x * walk_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x * walk_speed;

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
	/// @DnDParent : 1D275FCE
	var l0BE4BAA5_0;l0BE4BAA5_0 = keyboard_check_pressed(vk_space);if (l0BE4BAA5_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 33DCB6BE
		/// @DnDParent : 0BE4BAA5
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}

	/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 7C978E25
	/// @DnDParent : 1D275FCE
	/// @DnDArgument : "btn" "gp_face1"
	var l7C978E25_0 = 0;var l7C978E25_1 = gp_face1;if(gamepad_is_connected(l7C978E25_0) && gamepad_button_check_pressed(l7C978E25_0, l7C978E25_1)){	/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 22374DBA
		/// @DnDInput : 3
		/// @DnDParent : 7C978E25
		/// @DnDArgument : "function" "gamepad_set_vibration"
		/// @DnDArgument : "arg" "0"
		/// @DnDArgument : "arg_1" "0.7"
		/// @DnDArgument : "arg_2" "0.7"
		gamepad_set_vibration(0, 0.7, 0.7);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 24308AC2
		/// @DnDParent : 7C978E25
		/// @DnDArgument : "steps" "15"
		alarm_set(0, 15);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 023B953A
		/// @DnDParent : 7C978E25
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}}

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
var l1F138DC6_0 = instance_place(0, y + 2, [collison_death]);if ((l1F138DC6_0 > 0)){	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 190D23B0
	/// @DnDParent : 1F138DC6
	room_restart();}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6E30F190
/// @DnDArgument : "var" "Bullet_check"
/// @DnDArgument : "value" "1"
if(Bullet_check == 1){	/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 7BCC5AF3
	/// @DnDParent : 6E30F190
	/// @DnDArgument : "btn" "gp_shoulderr"
	var l7BCC5AF3_0 = 0;var l7BCC5AF3_1 = gp_shoulderr;if(gamepad_is_connected(l7BCC5AF3_0) && gamepad_button_check_pressed(l7BCC5AF3_0, l7BCC5AF3_1)){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 01C63999
		/// @DnDParent : 7BCC5AF3
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "Obj_Bullet"
		/// @DnDSaveInfo : "objectid" "Obj_Bullet"
		instance_create_layer(x + 0, y + 0, "Instances", Obj_Bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7BF56311
		/// @DnDParent : 7BCC5AF3
		/// @DnDArgument : "var" "Bullet_check"
		Bullet_check = 0;}}