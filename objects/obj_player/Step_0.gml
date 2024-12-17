/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
//code
// Llamamos la función y asignamos las teclas para dirección
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
jump_key = keyboard_check_pressed(vk_up);

// Calculamos la velocidad de movimiento 
xspd = (right_key - left_key) * move_spd;

// Asignamos sprites y máscaras
mask_index = sprite[DOWN]; 

if yspd == 0 
{
    if xspd > 0 { face = RIGHT; }
    if xspd < 0 { face = LEFT; }
}

if xspd == 0
{
    if yspd > 0 { face = DOWN; }
    if yspd < 0 { face = UP; }
}

sprite_index = sprite[face];

// Colisión horizontal
var _sub_pixel = 0.5;
if place_meeting(x + xspd, y, obj_piso) || place_meeting(x + xspd, y, obj_wall)  // Verificación de colisión con ambas paredes
{
    var _pixel_check = _sub_pixel * sign(xspd);
    while !place_meeting(x + _pixel_check, y, obj_piso) && !place_meeting(x + _pixel_check, y, obj_wall)
    {
        x += _pixel_check;
    }
    xspd = 0;  //  xspd con valor 0 al momento de colisionar
}
x += xspd;

// Movimiento de Y Gravedad
yspd += gravedad;

// Salto
if jump_key && (place_meeting(x, y + 1, obj_piso) || place_meeting(x, y + 1, obj_wall))  // Verificación de colisión con ambas paredes para el salto
{
    yspd = jspd;
}

// Colisión 
var _subPixel = 0.5;

if place_meeting(x, y + yspd, obj_piso) || place_meeting(x, y + yspd, obj_wall)  // Verificación de colisión con ambas paredes
{
    var _pixel_check = _sub_pixel * sign(yspd);
    while !place_meeting(x, y + _pixel_check, obj_piso) && !place_meeting(x, y + _pixel_check, obj_wall)
    {
        y += _pixel_check;
    }
    yspd = 0;  //  yspd a 0 cuando colisione
}

y += yspd;

// Animación del personaje
if xspd == 0 && yspd == 0 
{
    image_index = 0;
}


//niveles
        // portal
        if (place_meeting(x, y, obj_portal)) {
         //   audio_play_sound(snd_bandera, 1, false);
            room_goto_next(); // Cambia a la siguiente sala
        }





/////viejo code
/*
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
jump_key = keyboard_check_pressed(vk_space);

// Calculamos la velocidad de movimiento 
xspd = (right_key - left_key) * move_spd;

// Asignamos sprites y máscaras
//mask_index = sprite[DOWN]; 

if yspd == 0 
{
    if xspd > 0 { face = RIGHT; }
    if xspd < 0 { face = LEFT; }
}

if xspd == 0
{
    if yspd > 0 { face = DOWN; }
    if yspd < 0 { face = UP; }
}

sprite_index = sprite[face];

// Colisión horizontal
var _sub_pixel = 0.5;
if place_meeting(x + xspd, y, obj_pared)
{
    var _pixel_check = _sub_pixel * sign(xspd);
    while !place_meeting(x + _pixel_check, y, obj_pared)
    {
        x += _pixel_check;
    }
    xspd = 0;  // Establecemos xspd con valor 0 al momento de colisionar
}
x += xspd;

// Movimiento de Y Gravedad
yspd += gravedad;

// Salto
if jump_key && place_meeting(x, y + 1, obj_pared)  // Reemplaza obj_pared por obj_suelo si tienes un objeto suelo
{
    yspd = jspd;
}

// Colisión Y
var _subPixel = 0.5;

if place_meeting(x, y + yspd, obj_pared)
{
    var _pixel_check = _sub_pixel * sign(yspd);
    while !place_meeting(x, y + _pixel_check, obj_pared)
    {
        y += _pixel_check;
    }
    yspd = 0;  // Establecer yspd a 0 cuando colisione
}

y += yspd;

// Animación del personaje
if xspd == 0 && yspd == 0 
{
    image_index = 0;
}
/*
// Control de invulnerabilidad
if (invulnerable) 
{
    invulnerable_timer -= 1;  // Disminuir el contador de invulnerabilidad
    if (invulnerable_timer <= 0) 
	{
        invulnerable = false;  // Finalizar la invulnerabilidad cuando el tiempo se agote
    }
}
