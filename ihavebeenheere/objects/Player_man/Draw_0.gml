draw_sprite_ext(sprite_index,image_index,x,y,1,1,dir,image_blend,image_alpha);
draw_sprite(object_get_mask(object_index),0,x,y);
draw_text(x,y+45,string(vida));
draw_text(x,y+65,string(obj_arma.balas));
draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true);