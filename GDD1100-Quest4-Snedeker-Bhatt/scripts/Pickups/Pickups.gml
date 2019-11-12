

if(place_meeting(x,y,obj_PickupParent)){
	var target = instance_place(x,y, obj_PickupParent)
	if(target == instance_place(x,y,obj_doubleJump)){
		doubleJump = true;
		audio_play_sound(son_doubleJumpCoin,1,0);
	}
	if(target == instance_place(x,y,obj_Float)){
		float = true;
		audio_play_sound(son_floatCoin,1,0);
		
	}
	instance_destroy(target);
	
}
