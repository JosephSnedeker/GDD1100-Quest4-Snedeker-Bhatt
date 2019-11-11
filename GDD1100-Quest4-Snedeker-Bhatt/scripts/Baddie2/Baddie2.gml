
if(controlEnemy){
	
// You can write your code in this editor
	
	
	
	key_shoot = keyboard_check_pressed(vk_enter);
	

	//calculate shoot direction
	
	
	if(key_shoot){
		instance_create_depth(x,y,0,obj_baddie2Shot);
	}
	
	


	vsp = vsp + grv; 

	

	//Horizontal Collision
	if (place_meeting(x + hsp,y, obj_wall))
	{
		while (!place_meeting(x+sign(hsp),y, obj_wall))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	x = x + hsp;

	//Vert collision
	if (place_meeting(x, y+vsp, obj_wall))
	{
		while (!place_meeting(x,y+sign(vsp), obj_wall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;


//
//animations


	if (hsp != 0) image_xscale = sign(hsp);
}