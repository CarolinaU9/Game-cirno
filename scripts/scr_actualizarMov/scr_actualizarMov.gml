// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
/*
function scr_actualizarMov(){
	if (speed != 0) {
	distance -= move_spd;
	
	if (distance <= 0) {
		speed = 0;
		action = "Stand";
		
		x = floor((x + 1) / 16) * 16;
		y = floor((y + 1) / 16) * 16;
		
		}

	}

}
