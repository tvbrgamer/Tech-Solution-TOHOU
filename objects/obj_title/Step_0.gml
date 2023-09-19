if angle > max_angle{
	spin_title = true
} 

if angle < -max_angle{
	spin_title = false
}

if spin_title {
	angle -= 0.1
} else {
	angle += 0.1
}

image_angle = angle