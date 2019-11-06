// You can write your code in this editor
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_run = keyboard_check(vk_shift);

//calculate movement
var move = key_right - key_left;
if(!key_run){
	hsp = move * walksp;
}else{
	hsp = move * runsp;
}


vsp = vsp + grv; 

if(place_meeting(x,y+1, obj_wall)) and (key_jump)
{
		vsp = -30;
}

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


