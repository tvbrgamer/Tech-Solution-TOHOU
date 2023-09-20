function create_bullet_enemy(_shoot_speed,_shoot_angle,_obj_shoot)
{
	_shoot = instance_create_layer(x,y,"Enemy_bullets", _obj_shoot)
	_shoot.speed = _shoot_speed
	_shoot.image_angle = _shoot_angle
	_shoot.direction = point_direction(_obj_shoot.x,_obj_shoot.y,lengthdir_x(x+99999,_shoot_angle),lengthdir_y(x+99999,_shoot_angle))
}

function circle_bullet_pattern(_shoot_speed,_circle_offset,_obj_shoot)
{
	for(var _shoot_angle = 0+_circle_offset; _shoot_angle < 361+_circle_offset;_shoot_angle+=10){
		create_bullet_enemy( _shoot_speed, _shoot_angle ,_obj_shoot );
	}
}