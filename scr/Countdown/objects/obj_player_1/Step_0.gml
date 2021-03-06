//Player Input
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

script_execute(state);

//Update Sprite Index
var _oldSprite = sprite_index;
if (inputMagnitude != 0)
{
	direction = inputDirection;
	sprite_index = spriteWalk;
} else sprite_index = spriteFree;
if (_oldSprite != sprite_index) localFrame = 0;

//Update Image_index
PlayerAnimateSprite();