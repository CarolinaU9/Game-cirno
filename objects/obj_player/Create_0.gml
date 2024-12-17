/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

xspd = 0;
yspd = 0;

move_spd = 2;
move_dir = 0;

//SPRITES 

sprite[RIGHT] = spr_right;
sprite[UP] = spr_up;
sprite[LEFT] = spr_left;
sprite[DOWN] = spr_down;

face = DOWN;

//SALTOS
gravedad = .175 //
saltoPixel = 12//Salto por pixel
jspd = -4.15; //Velocidad de salto al caer


muerto = false; // Inicializa la variable 'muerto' como falsa, el jugador empieza vivo.
