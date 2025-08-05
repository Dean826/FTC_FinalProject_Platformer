/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0565DDFA
/// @DnDArgument : "var" "Bullet_check"
/// @DnDArgument : "value" "1"
if(Bullet_check == 1){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7EC778C7
	/// @DnDParent : 0565DDFA
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "Obj_Bullet"
	/// @DnDSaveInfo : "objectid" "Obj_Bullet"
	instance_create_layer(x + 0, y + 0, "Instances", Obj_Bullet);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 583E3306
	/// @DnDParent : 0565DDFA
	/// @DnDArgument : "var" "Bullet_check"
	Bullet_check = 0;}