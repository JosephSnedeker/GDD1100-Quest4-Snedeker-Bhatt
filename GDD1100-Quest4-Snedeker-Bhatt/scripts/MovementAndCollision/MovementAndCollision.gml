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

if(/*place_meeting(x,y+1, obj_wall) and */(key_jump) and (jump > 0))
{
		audio_play_sound(son_jump,1,0);
		vsp = -30;
		jump--;
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
	if(doubleJump){		
		jump = 2;
	}
	else{
		jump = 1;
	}
	while (!place_meeting(x,y+sign(vsp), obj_wall))
	{
		y = y + sign(vsp);
	}
	grv = 1.5;
	vsp = 0;
}

//float
if(vsp>0 && keyboard_check(vk_space) && float){
	grv = .1;
	audio_play_sound(son_float,1,0);
}
if(!keyboard_check(vk_space)){
	grv = 1.5;
	audio_stop_sound(son_float);
}


y = y + vsp;


//
//animations


if (hsp != 0) image_xscale = sign(hsp);


if (place_meeting(x + hsp,y, obj_trigger1))
{
	
		room_goto(rm_LvlTwo);
}
	
	if (place_meeting(x + hsp,y, obj_trigger2))
{
	
		room_goto(rm_LvlThree);
}
	
	if (place_meeting(x + hsp,y, obj_trigger3))
{
	
		room_goto(rm_p1Wins);
}
if(y>1050){
	KillPlayer();
}

