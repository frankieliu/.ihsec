(put 'iv_funs 'symbol-type "diva interface fun")
(setq iv_funs '(
("ivConcICe" "?cell ?resModelData ?capModelData [?ConcICeName] [?coupling] [?accuracy] " "Starts the ConcICe RC network reduction section of the layout verification program. Each of the arguments is a keyword preceded by a question mark (?). You must give each keyword a value, as indicated below. The ?cell, ?resModelData, and ?capModelData keywords are required, the other keywords are optional.")

("ivCreatePCells" "filename " "This function creates parameterized versions of existing cells for the display of devices created by the device extraction commands.")

("ivDRC" "?cell [?echo] [?full] [?hier] [?optimize] [?inc] [?join] [?set] [?rsf] [?area] [?rulesFromUnix] [?rulesLibName] [?rulesFilePath " "Starts the DRC section of the layout verification program. Each of the arguments is a keyword preceded by a question mark (?). You must give each keyword a value or a symbolic name set to the value.The ?cell argument is required; the other arguments are optional.")

("ivERC" "runDir libName cellName viewName netlist jobPriority rulesFromUnix rulesLibName rulesFilePath machine " "Starts the ERC program of the layout verification system. All arguments are required.")

("ivExtract" "?cell [?echo] [?macro] [?hier] [?full] [?inc] [?join] [?set] [?rsf] [?rulesFromUnix] [?rulesFilePath] [?rulesLibName] [?extractedName] [?excellName] " "Invokes the Extraction section of the layout verification program. The ?cell argument is required; the other arguments are optional.")

("ivLVS" "runDir layoutLibName layoutCellName layoutViewName netlistLayout  schematicLibName schematicCellName  schematicViewName  netlistSchematic  deviceFixing  noRewire  termCorr  useFileCorr  corrFile  xref  jobPriority rulesFromUnix rulesLibName rulesFilePath machine " "Invokes the Layout Versus Schematic (LVS) Comparison program of the layout verification system. All arguments are required.")

("ivRestart" "?dir [?echo] " "Initiates a DRC or Extraction run previously saved using the checkPoint command in the verification rules.")

("ivVerify" "" "Runs DRC and extraction from the UNIX environment.")

))
