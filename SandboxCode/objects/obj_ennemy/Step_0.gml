/// @description Insert description here
// You can write your code in this editor


image_angle		= direction;


if(instance_exists(obj_player)){
	move_towards_point(obj_player.x,obj_player.y,speed);
}

if(hp <= 0) {
	with(obj_score) thescore = thescore+5;
	audio_play_sound(snd_explode,0,0);
	instance_destroy();
}
