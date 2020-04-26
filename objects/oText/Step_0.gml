lerpProgress += (1 - lerpProgress) / 50;
textProgress += global.textSpeed;

x1 = lerp(x1, x1Target, lerpProgress);
x2 = lerp(x2, x2Target, lerpProgress);

//cycle through responses
keyUp = keyboard_check_pressed(vk_up);
keyDown = keyboard_check_pressed(vk_down);
responseSelected += (keyDown - keyUp);
var _max = array_length_1d(responses)-1;
var _min = 0;
if(responseSelected > _max) responseSelected = _min;
if(responseSelected < _min) responseSelected = _max;

if(keyboard_check_pressed(vk_space))
{
	var _messageLength = string_length(message);
	if(textProgress >= _messageLength)
	{
		//are there any responses ?
		if(responses[0] != -1)
		{
			with(originInstance)
			{
				DialogResponses(other.responseScripts[other.responseSelected]);
			}
		}

		// we destroy the text and display next one
		instance_destroy();
		if(instance_exists(oTextQueued)){
			with(oTextQueued) ticket--;	
		}
		else{
			//no more text so we reset
			with(oPlayer) state = lastState;
		}
		
		//is there any callback ? we do it in the end if we need to change state
		if(callbackScript != -1){
			with(originInstance){
				ScriptExecuteArray(other.callbackScript, other.callbackScriptArgs);
			}
		}
		
	}
	else
	{
		if(textProgress > 2){
			textProgress = _messageLength;
		}
	}
}