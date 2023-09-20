pause = false;
pauseSurface = noone;

elements = layer_get_all_elements("playzone");
for (var i = 0; i < array_length(elements); i++)
{
     if (layer_get_element_type(elements[i]) == layerelementtype_instance)
     {
         var _layerelement = elements[i];
         var _inst = layer_instance_get_instance(_layerelement);
         _inst.image_alpha=0
     }
}