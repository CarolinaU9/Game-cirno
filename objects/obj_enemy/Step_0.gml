/// @description Inserte aquí la descripción

// Puede escribir su código en este editor
var move_frequency = 15;

if (global.frame_counter mod move_frequency == 0) 
{
    // Mover al enemigo horizontalmente según su dirección
    x += speed * (direction == 0 ? 1 : -1);

    // Verificar si ha alcanzado el límite de movimiento
    if (x <= start_x - distance_max) 
	{
		// Cambiar a la derecha si llegó al límite izquierdo
        direction = 0;
		
		// Mantener el sprite normal
        image_xscale = 1;
    } 
    else if (x >= start_x + distance_max) 
	{
		// Cambiar a la izquierda si llegó al límite derecho
        direction = 100; 
		
		// Reflejar el sprite horizontalmente
        image_xscale = -1;
    }
}


// Altura inicial del enemigo
y = start_y;

/*
if (invulnerable) {
    invulnerable_timer -= 1;
    if (invulnerable_timer <= 0) {
        invulnerable = false;
        image_alpha = 1; // Restablecer visibilidad normal
    } else {
        // Parpadeo visual
        image_alpha = (invulnerable_timer div 5) mod 2; 
    }
}

if (!other.invulnerable) {
    global.vidas -= 1;
    other.invulnerable = true;
    other.invulnerable_timer = 60; // 1 segundo de invulnerabilidad (60 FPS)
}




/*

// Mover al enemigo según su dirección
x += lengthdir_x(speed, direction);

// Verificar si ha recorrido la distancia máxima desde su posición inicial
if (abs(x - start_x) >= distance_max) {
    // Cambiar dirección al alcanzar la distancia máxima
    if (direction == 0) {
        direction = 180; // Cambiar a la izquierda si iba a la derecha
        sprite_index = spr_enmyr_right;  // Cambiar el sprite a la dirección izquierda
    } else {
        direction = 0;  // Cambiar a la derecha si iba a la izquierda
        sprite_index = spr_enmyleft;  // Cambiar el sprite a la dirección derecha
    }

    // Actualizar la posición inicial para reiniciar la cuenta de distancia
    start_x = x;
}
