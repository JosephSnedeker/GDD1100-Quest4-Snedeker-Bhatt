//checks to see if enemy is close to player, giving control to player 2 if true
if (abs(x - obj_player1.x) < 600) {
   controlEnemy = true;
   show_debug_message("enemy in view")
}else{
	controlEnemy = false;
	show_debug_message("enemy NOT in view")
}