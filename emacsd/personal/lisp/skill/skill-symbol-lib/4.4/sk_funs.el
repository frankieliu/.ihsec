(put 'sk_funs 'symbol-type "SKILL Lint and Debugging")
(setq sk_funs '(
("skDisableMessage" "S_functionName S_messageName [x_occurrences]" "Disables a SKILL Lint message from being reported inside a given function definition.")

("skIgnoreMessage" "g_ignoreList " "Turns the reporting of specified SKILL Lint messages off. For a message to appear, both the message and its group have to be unignored.")

("skUnignoreMessage" "g_ignoreList " "Turns the reporting of specified SKILL Lint messages on. For a message to appear, both the message and its group have to be unignored.")

("skillDebugger" "" "Activates the SKILL Debugger. Usually invoked by a break or error handler.")

))
