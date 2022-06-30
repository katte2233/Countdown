keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));

keyInteract = mouse_check_button_pressed(mb_right);
keyVault = keyboard_check_pressed(vk_space);
keySprint = keyboard_check(vk_shift);
keyRoll = keyboard_check_pressed(vk_tab);
keyCrawl = keyboard_check_pressed(vk_control);

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0)	||	(keyDown - keyUp != 0);

//Movement
hSpd = lengthdir_x(inputMagnitude * walkSpd, inputDirection);
vSpd = lengthdir_y(inputMagnitude * walkSpd, inputDirection);

x += hSpd;
y += vSpd;

image_angle = point_direction(x,y,mouse_x,mouse_y);