if (keyboard_check_released(vk_escape)){
	pause = !pause;

	if (pause) {
		audio_pause_all();
	} else {
		surface_free(pauseSurface);
		instance_activate_all();
		audio_resume_all();
	}	
}

if (keyboard_check_released(ord("R")) && pause) {
	room_goto(rm_test)	
}

if (keyboard_check_released(ord("M")) && pause) {
	room_goto(Menu)
}