x = xPos
y = yPos
draw_sprite(spr_textbox, -1, x, y)

draw_set_font(fnt_arial)
draw_set_color(c_white)
draw_text_ext(x, y, "wow such text", 5, 500)