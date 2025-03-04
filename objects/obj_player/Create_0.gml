state = PLAYERSTATE.FREE

hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 6.5;

canDash = false
dashDistance = 110
dashTime = 12
dashCooldown = 0

hp = 3
flash = 0
hitfrom = 0
invincible = false
depth = -5

if (!variable_global_exists("score")) {
    global.score = 0;
}
