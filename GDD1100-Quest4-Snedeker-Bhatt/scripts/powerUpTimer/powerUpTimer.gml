
if(doubleJump && doubleJumpTime > 0){
	doubleJumpTime--;
	show_debug_message(doubleJumpTime);
}else{
	doubleJump = false
	doubleJumpTime = 360;
}
if(float && floatTime > 0){
	floatTime--;
	show_debug_message(floatTime);
}else{
	float = false
	floatTime = 360;
}


	