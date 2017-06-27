//Keyboard Event
if(keyboard_check(ord("Z"))) {
	y = y - 4;
	image_speed = walkSpeed / 3;
	sprite_index = spr_playerBack;
}	

if(keyboard_check(ord("S"))) {
	y = y + 4;
	image_speed = walkSpeed / 3;
	sprite_index = spr_playerFront;
}

if(keyboard_check(ord("Q"))) {
	x = x - 4;
	image_speed = walkSpeed / 3;
	sprite_index = spr_playerLeft;
}

if(keyboard_check(ord("D"))) {
	x = x + 4;
	image_speed = walkSpeed / 3;
	sprite_index = spr_playerRight;
}

if(keyboard_check(vk_nokey)) {
	image_speed = 0;
	sprite_index = 0;
	walkSpeed = 3.5;
}

if(keyboard_check(vk_shift)) {
	walkSpeed = 7;
}

// Mouse Event
if(mouse_check_button(mb_left) && (cooldown<=0)) {
	instance_create_layer(x,y,"BulletLayer",obj_fireball);
	cooldown = 10;
}


//Miscellaneous Event
cooldown = cooldown - 1;
if(not(instance_exists(obj_ennemy))) {
	image_speed = walkSpeed / 3;
	sprite_index = spr_playerDancing;
}