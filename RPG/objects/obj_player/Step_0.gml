upKeyPressed = keyboard_check(ord("W"))
leftKeyPressed = keyboard_check(ord("A"))
downKeyPressed = keyboard_check(ord("S"))
rightKeyPressed = keyboard_check(ord("D"))

xSpeed = (rightKeyPressed - leftKeyPressed) * moveSpeed
ySpeed = (downKeyPressed - upKeyPressed) * moveSpeed


move_and_collide(xSpeed, ySpeed, obj_blocade)

if xSpeed == 0 && ySpeed == 0
{
	switch direc
	{
		case 0: sprite_index = spr_player_still_right
		break;
		case 1: sprite_index = spr_player_still_up
		break;
		case 2: sprite_index = spr_player_still_left
		break;
		case 3: sprite_index = spr_player_still_down
		break;
	}
}
else
{
	if ySpeed > 0
	{
		sprite_index = spr_player_down
		direc = 3
	}
	if ySpeed < 0
	{
		sprite_index = spr_player_up
		direc = 1
	}
	if xSpeed > 0
	{
		sprite_index = spr_player_right
		direc = 0
	}
	if xSpeed < 0
	{
		sprite_index = spr_player_left
		direc = 2
	}
}