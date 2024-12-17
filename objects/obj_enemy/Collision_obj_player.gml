/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (other.yspd > 0 && other.y + other.yspd <= y) 
{
    // Destruir el enemigo
    instance_destroy(); 
} else {
    // Restar una vida al jugador
    global.vidas -= 1; 
	
	// Reproducir el sonido cuando se pierde una vida
   // audio_play_sound(snd_vida, 1, false); 

    // Revisar si el jugador ha perdido todas las vidas
    if (global.vidas <= 0) 
	{
        // Reiniciar el juego completamente
        game_restart();
    } /*else 
	
	{
       //Si aún tiene vidas, solo regresar al jugador a su posición inicial
       other.x = other.start_x;
        other.y = other.start_y;
    }*/
}
