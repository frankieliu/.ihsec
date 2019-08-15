(put 'gdm_funs 'symbol-type "Generic Design Management")
(setq gdm_funs '(
("gdmAddSpecToSpecList" "G_gdmSpec q_gdmSpecList " "Adds a gdmSpec object to a gdmSpecList object. If required, it automatically increases the size of the gdmSpecList object so that more gdmSpec objects can be added.")

("gdmCreateSpec" "t_libName | emptyString | nil t_cellName | emptyString | nil t_viewName | emptyString | nil t_fileName | emptyString | nil t_namespace [x_gdmOptions] " "Creates a gdmSpec object, a user-defined type of SKILL object, according to the options you specify. You must specify at least one of the first four arguments-a library name, cell name, view name, or file name. If you specify a cell name, you must also specify a library name. If you specify a view name, you must also specify a cell name and a library name.")

("gdmCreateSpecFromDDID" "b_ddId " "Creates a gdmSpec, a user-defined type of SKILL object, from a ddId object.")

("gdmCreateSpecList" "" "Creates a gdmSpecList object, to which you can add gdmSpec objects later with the gdmAddSpecToSpecList function.")

("gdmInspectSpec" "G_gdmSpecId t_namespace " "From a gdmSpec object, extracts and returns the library name, cell name, view name, and file name, if they exist in the gdmSpec object. The information returned will be in the name space you specify in the t_namespace argument.")

("gdmNextFromSpecList" "q_gdmSpecList " "Takes a gdmSpecList object and returns a gdmSpec object from it. The first time you call this function, it returns the first gdmSpec object in the gdmSpecList. Each successive call gets the next gdmSpec object.")

("gdmResetSpecList" "q_gdmSpecList " "Resets the gdmSpecList so that you can obtain gdmSpec objects from it with successive calls of the gdmNextFromSpecList function.")

))
