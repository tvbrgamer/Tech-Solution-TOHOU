function teste(){
	if canshoot
	{
		create_bullet(5,270,obj_bala_inimigo);
		canshoot=false
		alarm[11] = 20
	}
}

function attack_phase_1(){
	
	if point_direction(x,y,obj_playzone.x,obj_playzone.y) < 200 {
		x=obj_playzone.x
		y=obj_playzone.y
		
	} else{
		move_towards_point(obj_playzone.x,obj_playzone.y,5);
	}
	
	
	if instance_exists(obj_inimigo)
	{
		obj_inimigo.canmove=false
	}
	
	if canshoot
	{
		circle_bullet_pattern(3,obj_bala_inimigo)
		canshoot=false
		alarm[11] = 60
	}
}