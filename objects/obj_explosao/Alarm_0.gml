if !instance_exists(obj_inimigo){
	instance_create_layer(x,y,"Instances",obj_inimigo)
}

if !instance_exists(obj_player){
	audio_play_sound(snd_death,1,0)
}

instance_destroy()