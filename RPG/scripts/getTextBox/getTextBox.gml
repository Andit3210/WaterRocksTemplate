// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getTextBox(textBoxType){
	xPos = 0
	yPos = 0
	xScale = 0
	yScale = 0
	switch textBoxType
	{
		case "speaker": xPos = 600; yPos = 550; xScale = 20; yScale = 10;
		break;
	}
	
	return [xPos, yPos, xScale, yScale]
	
	
}
// Returns an array including textbox scaling and positioning