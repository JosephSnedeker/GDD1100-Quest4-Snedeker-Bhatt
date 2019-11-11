key_left = keyboard_check(ord("J"));
key_right = keyboard_check(ord("L"));
key_up = keyboard_check(ord("I"));
leftValue = key_left * 180;
rightValue = key_right * 0;
upValue = key_up * 90;
shootDirection = (leftValue + rightValue + upValue)/(key_left + key_right + key_up);
show_debug_message(shootDirection);