//checks to see if enemy is close to player, giving control to player 2 if true
if (abs(x - obj_player1.x) < 600) {
   controlEnemy = true;
   
}else{
	controlEnemy = false;
	
}