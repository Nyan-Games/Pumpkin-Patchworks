//used as switch to get new dialog
if(showing_dialog == false)
{	
	//are all dialogues out?
	if(dialog.count() <= 0)
	{
		instance_destroy();
	}
	
	//pop first dialoge and store it in variable, then swich dialogue to true
	current_dialog = dialog.pop();
	showing_dialog = true;
	
}

//if you press a key, set showing dialog to false and trigger above code. alpha 0 fades it in
else 
{
	if(keyboard_check_released(key_next)) 
	{
		showing_dialog = false;
		alpha = 0;
	}
}
	
	