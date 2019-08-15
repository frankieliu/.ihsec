; Load this file inside Opus.

; A gateway to Opus.
; Using a shell sub process started with hiBeginProcess Unix programs 
; can send Skill commands to Opus to execute.
; Uses gateToOpus or gateToOpus.ksh as an inferior process.


GateToOpusPath = INSTALLDIR

procedure( GateToOpusIOHandler(childId data)
  printf("%s" data)
;  evalstring(data)
)

procedure( GateToOpusErrHandler(childId data)
  printf("%s" data)
)

let( (cid)
  if( isFile( "/bin/ksh" ) then
     file = "/gateToOpus.ksh"
  else
     file = "/gateToOpus"
  )
  file = strcat( GateToOpusPath file )

;  cid = hiSkillProcess( strcat( getShellEnvVar("HOME") file )
  cid = hiSkillProcess( file
                        "" 
                        "GateToOpusIOHandler" 
                        "GateToOpusErrHandler" 
                        "" 
                        ""
        )
  if( cid && cid != 0 then
     info("Started Skill process, child id = %d\n" cid)
  else
     warn("Could not start gateToOpus properly.\n")
  )
) ; let

