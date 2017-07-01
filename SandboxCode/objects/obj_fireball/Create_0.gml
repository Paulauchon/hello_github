direction		= point_direction(x,y,mouse_x,mouse_y);
speed			= 8;
image_angle		= direction;

audio_sound_pitch(snd_fireball,random_range(0.8,1.2));
audio_play_sound(snd_fireball,0,0);