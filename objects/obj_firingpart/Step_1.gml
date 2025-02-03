// Verkrijg de barrelpositie van de gun direct in de firing part
var barrel_x = obj_gun.x + lengthdir_x(20, obj_gun.image_angle); // Bereken de barrelpositie
var barrel_y = obj_gun.y + lengthdir_y(20, obj_gun.image_angle); // Bereken de barrelpositie

// Verplaats het firing part naar de barrelpositie
x = barrel_x;
y = barrel_y;

// Pas de y-scale van het firing part aan afhankelijk van de rotatie
image_angle = point_direction(x, y, mouse_x, mouse_y); // Richt de kogel in de richting van de muis
if (image_angle > 90) && (image_angle < 270) {
    image_yscale = -1;
} else {
    image_yscale = 1;
}

// Verminder de firing delay
firingdelay = firingdelay - 1;
global.recoil = max(0, global.recoil - 1);

// Als we mogen schieten
if (mouse_check_button(mb_left)) && (firingdelay < 0) {
    global.recoil = 4;
    firingdelay = 5;
    
    // Maak een kogel aan op de barrelpositie
    var bullet = instance_create_layer(barrel_x, barrel_y - 10, "Bullets", obj_bullet);
    
    // Stel de snelheid en richting van de kogel in
    bullet.speed = 15;
    bullet.direction = obj_gun.image_angle + random_range(-3, 3); // Richting van het wapen
    bullet.image_angle = bullet.direction;
}
