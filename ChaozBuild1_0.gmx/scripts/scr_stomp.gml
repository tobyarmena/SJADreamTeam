if keyboard_check_pressed(vk_space) && delay = false
    {
    delay = true
    alarm[0]=90
    with (par_enemies)
       {
       fx = lengthdir_x(1000000000,point_direction(obj_player.x,obj_player.y,x,y))
       fy = lengthdir_y(1000000000,point_direction(obj_player.x,obj_player.y,x,y))
            
       if distance_to_object(obj_player) < 200
           {
           follow = false;
           physics_apply_impulse(x,y,fx,fy);
           follow = true;
       }
    }
}
