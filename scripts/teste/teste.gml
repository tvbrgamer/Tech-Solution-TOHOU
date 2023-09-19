function teste(){
	if attack_phase == ATTACK.TESTE {
		if canshoot{
			angle = 180
			_shoot = instance_create_layer(x,y,"Enemy_bullets", obj_bala_inimigo)
			_shoot.speed = 5
			_shoot.image_angle = -angle
			_shoot.direction = point_direction(x,y,x,y+9999)
			canshoot=false
			alarm[11] = 20
		}
	}
}

function attack_phase_1(){
	if attack_phase == ATTACK.PHASE_1 {
		if canshoot{
			angle = 180
			_shoot = instance_create_layer(x,y,"Enemy_bullets", obj_bala_inimigo)
			_shoot.speed = 15
			_shoot.image_angle = -angle
			_shoot.direction = point_direction(x,y,x,y+9999)
			canshoot=false
			alarm[11] = 20
		}
	}
}