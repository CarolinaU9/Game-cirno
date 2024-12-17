/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
/*
scr_actualizarMov();

//Colisiones
if place_meeting(x + xspd, y, obj_wall) = true
	{
		xspd = 0;
	}
if place_meeting(x, y + yspd, obj_wall ) = true
	{
		yspd = 0;
	}

x += xspd;
y += yspd;


//code
// scr_actualizarMov
if keyboard_check(vk_left) {
    xspd = -4;
} else if keyboard_check(vk_right) {
    xspd = 4;
} else {
    xspd = 0;
}

if keyboard_check(vk_up) {
    yspd = -4;
} else if keyboard_check(vk_down) {
    yspd = 4;
} else {
    yspd = 0;
}