#region movimentação

var _key_up, _key_down, _key_left, _key_right, _key_focus, _key_shoot

_key_up    = keyboard_check(vk_up)    or keyboard_check(ord("W"))
_key_down  = keyboard_check(vk_down)  or keyboard_check(ord("S"))
_key_left  = keyboard_check(vk_left)  or keyboard_check(ord("A"))
_key_right = keyboard_check(vk_right) or keyboard_check(ord("D"))
_key_focus = keyboard_check(vk_shift)
_key_shoot = keyboard_check(vk_space)

speedv = (_key_down  - _key_up)   * move_speed
speedh = (_key_right - _key_left) * move_speed


move_and_collide(speedh,speedv,obj_barrier)

if _key_focus{
	obj_player_hitbox.image_alpha = 1
	move_speed=3
}else{
	obj_player_hitbox.image_alpha = 0
	move_speed=10
}

#endregion

#region atirar

if _key_focus && _key_shoot
{
	player_shoot_focus();
}
else if _key_shoot
{
	player_shoot();
}

#endregion

if vida < 1{
	instance_destroy()
}