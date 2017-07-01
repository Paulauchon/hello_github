/// @description Insert description here
// You can write your code in this editor

var pc;
pc = (hp / maxHP) * 100;

draw_self();
draw_healthbar((x-sprite_width/2), 
				(y-sprite_height/2), 
				(x-sprite_width/2)+sprite_width, 
				(y-sprite_height/2)+10, 
				pc, 
				c_black, 
				c_red, 
				c_lime, 
				0, 
				true, 
				true);
