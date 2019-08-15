(put 'eco_funs 'symbol-type "Engineering Change Ordering")
(setq eco_funs '(
("ecoCompare" "<libName.original> <cellName.original> <viewName.original> <libName.new> <cellName.new> <viewName.new> <outputFileName> " "Allows you to compare an original design with a new, modified design by generating an ECO (engineering change order) file. The ECO file helps you manage changes to the netlist that occur after placement or routing. The ECO file contains a list of SKILL functions describing changes to the connectivity of a design. If the logic of the design changes, you can use an ECO file to implement those changes in the physical design. After generating the ECO file, you can load the information in the file to automatically update your original design with the changes.")

))
