if(vida <= 0)
{
	instance_destroy()
}

if (vida <= 99){
	attack_phase = ATTACK.PHASE_1
}
if (vida <= 40){
	attack_phase = ATTACK.PHASE_2
}

switch (attack_phase)
{
case ATTACK.TESTE: teste(); break;
case ATTACK.PHASE_1: attack_phase_1(); break;
case ATTACK.PHASE_2: attack_phase_2(_bullet_offset); break;
}

if canmove == false{

move_and_collide(0,0,obj_barrier)

} else{
move_and_collide(speedh,0,obj_barrier)	
}