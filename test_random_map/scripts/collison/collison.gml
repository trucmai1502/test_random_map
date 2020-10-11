function collison(){
	if place_meeting(x + hsp,y,o_wall){
		while !place_meeting(x + sign(hsp),y,o_wall){
			x += sign(hsp);	
		}
		hsp = 0;
	}
	
	if place_meeting(x,y + vsp,o_wall){
		while !place_meeting(x,y +sign(vsp),o_wall){
			y += sign(vsp);	
		}
		vsp = 0;
	}
	
		if place_meeting(x + hsp,y,o_block){
		while !place_meeting(x + sign(hsp),y,o_block){
			x += sign(hsp);	
		}
		hsp = 0;
	}
	
	if place_meeting(x,y + vsp,o_block){
		while !place_meeting(x,y +sign(vsp),o_block){
			y += sign(vsp);	
		}
		vsp = 0;
	}
	
}