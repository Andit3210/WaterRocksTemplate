if interactKeyPressed
{
	if (textBox == noone)
	{
		textBox = instance_create_depth(0, 0, bbox_bottom, obj_textbox)
	}
}	
if keyboard_check(vk_space)
{
	instance_destroy(textBox)
	textBox = noone
	global.move = true
}
