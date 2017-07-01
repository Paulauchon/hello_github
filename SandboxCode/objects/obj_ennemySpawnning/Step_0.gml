/// @description Insert description here
// You can write your code in this editor


if (image_xscale <= 0.5) {
	image_xscale = image_xscale + 0.005;
	image_yscale = image_xscale;
} else {
	instance_change(obj_ennemy,true);
}

