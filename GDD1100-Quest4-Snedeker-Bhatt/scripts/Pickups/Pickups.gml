

if(place_meeting(x,y,obj_PickupParent)){
	var target = instance_place(x,y, obj_PickupParent)
	instance_destroy(target);
	doubleJump = true;
}
