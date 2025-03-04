// Bereken de camera's absolute positie (relatief aan de room)


var camera_x = obj_camera.x;  // Dit is de x-coördinaat van de camera
var camera_y = obj_camera.y;  // Dit is de y-coördinaat van de camera

// Teken de score op het scherm (een vaste positie relatief aan de camera)
draw_text(camera_x - 280, camera_y - 210, string(global.score)); // Dit zorgt ervoor dat de score 32 pixels vanaf de camera wordt getekend
draw_set_font(font_score)