if(vida <= 0)
{
	instance_destroy()
}

if (vida <= 99){
	attack_phase = ATTACK.PHASE_1
}

switch (attack_phase)
{
case ATTACK.TESTE: teste(); break;
case ATTACK.PHASE_1: attack_phase_1(); break;
}

if canmove == false{

move_and_collide(0,0,obj_barrier)

} else{
move_and_collide(speedh,0,obj_barrier)	
}