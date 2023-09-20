function teste(){
	if canshoot
	{
		create_bullet_enemy(5,270,obj_bala_inimigo);
		canshoot=false
		alarm[11] = 20
	}
}

function attack_phase_1(){
	
	if point_direction(x,y,obj_playzone.x,obj_playzone.y) < 200 {
		x=obj_playzone.x
		y=obj_playzone.y
		speedh=0
		
	} else{
		move_towards_point(obj_playzone.x,obj_playzone.y,5);
	}
	
	
	if instance_exists(obj_inimigo)
	{
		canmove=false
	}
	
	if canshoot
	{
		circle_bullet_pattern(3,0,obj_email_inimigo)
		canshoot=false
		alarm[11] = 60
	}
}

function attack_phase_2(_bullet_offset){
	
	if point_direction(x,y,obj_playzone.x,obj_playzone.y)  < 200 {
		x=obj_playzone.x
		y=obj_playzone.y
		speedh = 0
		
	} else{
		move_towards_point(obj_playzone.x,obj_playzone.y,5);
	}
	
	
	if canshoot
	{
		circle_bullet_pattern(2,_bullet_offset,obj_email_inimigo)
		canshoot=false
		alarm[11] = 30
	}
}