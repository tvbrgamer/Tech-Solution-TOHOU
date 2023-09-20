function create_bullet_player(_shoot_speed,_shoot_angle,_obj_shoot)
{
	_shoot = instance_create_layer(x,y,"Player_bullets", _obj_shoot)
	_shoot.speed = _shoot_speed
	_shoot.image_angle = _shoot_angle
	_shoot.direction = point_direction(_obj_shoot.x,_obj_shoot.y,lengthdir_x(x+99999,_shoot_angle),lengthdir_y(x+99999,_shoot_angle))
}


function player_shoot(){
	
	create_bullet_player(20,70,obj_bala);
	create_bullet_player(20,90,obj_bala);
	create_bullet_player(20,110,obj_bala);
}

function player_shoot_focus(){
	create_bullet_player(20,85,obj_bala);
	create_bullet_player(20,90,obj_bala);
	create_bullet_player(20,95,obj_bala);
}