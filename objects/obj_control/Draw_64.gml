/// @description Inserte aquí la descripción
// Puede escribir su código en este editor



//Score
draw_set_font(fnt_score);

draw_set_color(c_white);

draw_text(40, 20, "Score: " + string(global.score));

//life
draw_set_font(fnt_life);

draw_set_color(c_white);

for (var i = 0; i < global.vidas; i++) {
    // Cada corazón estará separado 30 píxeles
    draw_sprite(spr_heart, 0, 750 + i * 30, 30);
}

// Evento de colisión del jugador con el enemigo
if (place_meeting(x, y + 1, obj_enemy)) {
    global.vidas -= 1; // Resta una vida

    // Revisar si las vidas llegan a 0
    if (global.vidas <= 0) {
        game_restart();  // Reinicia el juego (o ve a la pantalla de Game Over)
    }
}








/*
// Evento de colisión del jugador con el enemigo
if (place_meeting(x, y + 1, obj_enemy)) { // Ajusta obj_enemy según el nombre de tu objeto enemigo
    global.vidas = -1;
   // game_restart();  // Reinicia el juego (o cambia a otra room de game over)
}