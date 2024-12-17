/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (!muerto) 
{
	// Jugador muerto
    muerto = true;
	
	// Cambia al spr_muerte
   //  sprite_index = spr_muerte;
	
	// Restar una vida
    global.vidas -= 1;

    // Detener movimiento
	// Movimiento vertical
    vspeed = 0;
	
	// Movimiento horizontal
    hspeed = 0;

    // Detener la música
    audio_stop_sound(snd_music);
	
	// Mensaje de game over
	show_message("¡Game Over!");
	 
	// Reiniciar el juego
    game_restart();
	
	// Reproduce la música de fondo
	audio_play_sound(snd_music, 1, true); 
}




if (place_meeting(x, y, obj_lava)) {
    show_message("GAME OVER");   
    game_restart();  
}


