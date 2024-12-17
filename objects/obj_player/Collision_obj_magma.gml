/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (!invulnerable && place_meeting(x, y, obj_magma)) {
   audio_play_sound(snd_dead, 1, false);
    // Restar una vida
    global.Vidas -= 1;

    // Verificar si aún tiene vidas
    if (global.Vidas > 0) {

        // Mover al jugador de vuelta a la posición inicial
        x = start_x;
        y = start_y;
    } else {
        // Si las vidas llegan a 0, mostrar Game Over y reiniciar el juego
        show_message("Game Over");
        // Restablecer las vidas a 3 antes de reiniciar el juego por completo
        global.Vidas = 3;
        game_restart();
    }
}

