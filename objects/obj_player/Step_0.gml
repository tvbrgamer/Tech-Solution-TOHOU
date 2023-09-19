#region movimentação

var _key_up, _key_down, _key_left, _key_right, _key_shift

_key_up    = keyboard_check(vk_up)    or keyboard_check(ord("W"))
_key_down  = keyboard_check(vk_down)  or keyboard_check(ord("S"))
_key_left  = keyboard_check(vk_left)  or keyboard_check(ord("A"))
_key_right = keyboard_check(vk_right) or keyboard_check(ord("D"))
_key_shift = keyboard_check(vk_shift)

speedv = (_key_down  - _key_up)   * move_speed
speedh = (_key_right - _key_left) * move_speed

if _key_shift{
	obj_player_hitbox.image_alpha = 1
	move_speed=3	
}else{
	obj_player_hitbox.image_alpha = 0
	move_speed=10
}

move_and_collide(speedh,speedv,obj_barrier)

#endregion

if keyboard_check(vk_space){
	instance_create_layer(x,y-30,"Instances",obj_bala)
}

if vida < 1{
	instance_destroy()
}