function messageBox(msg, textBoxType) {
	textBoxInfo = getTextBox(textBoxType)
	xPos = textBoxInfo[0]
	yPos = textBoxInfo[1]
	xScale = textBoxInfo[2]
	yScale = textBoxInfo[3]
	global.move = false
	
	{
		show_debug_message(string(xPos))
		show_debug_message(string(yPos))
		show_debug_message(string(xScale))
		show_debug_message(string(yScale))
		i = 1
	}

	//draw_sprite_ext(sprite_index, image_index, x, y, 0, xScale, yScale, image_blend, image_alpha)
	draw_sprite_ext(sprite_index, image_index, xPos, yPos, xScale , yScale, image_angle, image_blend, image_alpha)

	draw_set_font(fnt_arial)
	draw_set_color(c_white)
	draw_text_ext(xPos + 8, yPos + 8, msg, 50, 500)
}