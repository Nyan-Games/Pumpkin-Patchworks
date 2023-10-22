// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Dialogue() constructor
{
	//creates an array, filled with structs. Read array 1 by 1 to have dialog appear
	_dialogs = [];
	
	
	add = function(_sprite, _message)
	{	
		array_push(_dialogs,
		{
			sprite: _sprite,
			message: _message,
		})
	}
	//pops item off dialog and returns it to code
	pop = function() 
	{
		//get first element in array, then remove it from array and finally return it to dialog system
		var _t = array_first(_dialogs);
		array_delete(_dialogs, 0, 1);
		
		return _t;
	}
	
	//determins if any more dialogs left to display
	count = function() 
	{
		return array_length(_dialogs);
	}
}
