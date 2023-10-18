// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawAttributes(){
	draw_sprite_ext(sStem,stem,x,(y - sprite_height) ,image_xscale,image_yscale,0,c_white,image_alpha);
	draw_self();
	draw_sprite_ext(sPumpkin, 0, x, y, image_xscale, image_yscale, 0, color, TINT_OPACITY);
	draw_sprite_ext(sEyes,eyes,x,y,image_xscale,image_yscale,0,c_white,image_alpha);
	draw_sprite_ext(sMouth,mouth,x,y,image_xscale,image_yscale,0,c_white,image_alpha);
	draw_sprite_ext(sNose,nose,x,y,image_xscale,image_yscale,0,c_white,image_alpha);
	
}