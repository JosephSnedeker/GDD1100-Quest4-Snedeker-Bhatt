if(position_meeting(mouse_x, mouse_y, id) && mouse_check_button(mb_left))
	image_index = 2;
else if(position_meeting(mouse_x, mouse_y, id))
    image_index = 1;
else
    image_index = 0;
	
if(position_meeting(mouse_x, mouse_y, obj_HelpButton) && mouse_check_button_released(mb_left))
	room_goto(Help)
if(position_meeting(mouse_x, mouse_y, obj_NextButton) && mouse_check_button_released(mb_left))
	room_goto(rm_helpTwo)	

if(position_meeting(mouse_x, mouse_y, obj_BackButton) && mouse_check_button_released(mb_left))
	room_goto(TitleScreen)
if(position_meeting(mouse_x, mouse_y, obj_CloseButton) && mouse_check_button_released(mb_left))
	game_end();