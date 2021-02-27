//draw_sprite_ext(object_get_mask(object_index),0,x,y,1,1,image_angle,c_white,1);
//draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true);
//draw_circle(x,y,radio_persecucion,true);
//draw_circle(x,y,radio_ataque,true);
draw_sprite_ext(sprite_index,image_index,x,y,1,1,dir,image_blend,image_alpha);
if(vida>0){draw_text(x,y+40,string(vida));}