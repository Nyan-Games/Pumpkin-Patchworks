////Create an instance of the sequence
//global.current_sequence = layer_sequence_create("Cutscenes", 0, 0, seq_intro);

////Get the objects for this sequence from the instance
//var _seq_inst = layer_sequence_get_instance(global.current_sequence);

//var _seq = sequence_get(seq_intro);
//var _sequence_objects = sequence_get_objects(_seq);

////Override the sequence objects with room objects
////this assumes the first created instance of an object is the one we want to keep
//for (var i = 0; i < array_length(sequence_objects); i++)
//{
//	var _object = sequence_objects[i];
	
//	if instance_exists(object)
//	{
//		var room_obj_inst = instance_find(object, 0);
//		sequence_instance_override_object(_seq_inst, object, room_obj_inst);
//	}
//}
