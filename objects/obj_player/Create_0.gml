state = PLAYERSTATE.FREE

hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 9;

canDash = false
dashDistance = 200
dashTime = 12
dashCooldown = 0


// Slow-motion
game_speed = 1; // Normale gamesnelheid

hp = 3
flash = 0
hitfrom = 0
invincible = false
depth = -5

if (!variable_global_exists("score")) {
    global.score = 0;
}
