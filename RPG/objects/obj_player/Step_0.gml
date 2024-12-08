upKeyPressed = keyboard_check(ord("W"))
leftKeyPressed = keyboard_check(ord("A"))
downKeyPressed = keyboard_check(ord("S"))
rightKeyPressed = keyboard_check(ord("D"))

interactKeyPressed = keyboard_check(ord("E"))

xSpeed = (rightKeyPressed - leftKeyPressed) * moveSpeed
ySpeed = (downKeyPressed - upKeyPressed) * moveSpeed

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

if place_meeting(x, y + ySpeed, obj_blocade)
{
	ySpeed = 0 
	show_debug_message("Y collision")

}
if place_meeting(x + xSpeed, y, obj_blocade)
{
	xSpeed = 0 
	show_debug_message("X collision")
}

x += xSpeed
y += ySpeed

//move_and_collide(xSpeed * moveSpeed, ySpeed * moveSpeed, obj_blocade)

depth = -bbox_bottom