// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
/*
function scr_moveTo(xDirecc, yDirecc){
if (place_free(x + 16*xDirecc, y + 16*yDirecc)) {
		hspeed = move_spd * xDirecc;
		vspeed = move_spd * yDirecc;
		distance = 16; // esto es para el personaje. plantilla 32 * 32, dependiendo plantilla tratar
		//de ponerlo en la mitad para que funcione, checar esos parametros, checar que tanta distancia toma 
		//el moverse el personaje
		action = "Walk"
	}
	scr_faceTo(x + 16*xDirecc, Y +16*yDirecc);
}