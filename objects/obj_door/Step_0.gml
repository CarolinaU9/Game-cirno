/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
//PASO en el objeto que va hacer la transición

if place_meeting(x, y, obj_player) && !instance_exists(obj_animacion)
{
    // Crea la instancia de obj_animacion para manejar la transición
    var inst = instance_create_depth(0, 0, -9999, obj_animacion);
    inst.target_x = target_x;
    inst.target_y = target_y;
    inst.target_rm = target_rm;
}
