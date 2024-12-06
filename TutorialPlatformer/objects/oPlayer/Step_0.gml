//Get inputs
getControls()
//X movement
moveDir = rightKey - leftKey

//Get xSpeed
xSpeed = moveDir * moveSpeed

//x collision
var _subPixel = .5
if place_meeting(x + xSpeed, y, oSolid) {
	
	//Scoot up to wall precisely
	var _pixelCheck = _subPixel * sign(xSpeed)
	while !place_meeting( x + _pixelCheck, y, oSolid) {
		x += _pixelCheck
	}
	xSpeed = 0	
}

// Move
x += xSpeed

//Y movement
ySpeed += grav
if ySpeed > termVel {ySpeed = termVel}

if ySpeed >= 0 && place_meeting(x, y + 1, oSolid) {
	onGround = true
}
else {
	onGround = false	
}

if onGround {
	jumpCount = 0	
}
else {
	if jumpCount == 0 { jumpCount = 1}	
}

//Jump
if jumpKeyBuffered && jumpCount < jumpMax {
	jumpKeyBuffered = false
	jumpKeyBufferTimer = 0
	
	jumpCount++
	
	jumpHoldTimer = jumpHoldFrames
}
if jumpHoldTimer > 0 {
	ySpeed = jumpSpeed
	jumpHoldTimer--
}
if !jumpKey {
	jumpHoldTimer = 0	
}
//Y Collision

var _subPixel = .5
if (place_meeting(x, y + ySpeed, oSolid)) {
	var _pixelCheck = _subPixel	* sign(ySpeed)
	while !place_meeting (x, y + _pixelCheck, oSolid) {
		y += _pixelCheck	
	}
	ySpeed = 0
}

y += ySpeed

//Spikes
if place_meeting(x, y, oSpikes) {
	room_restart()	
}


