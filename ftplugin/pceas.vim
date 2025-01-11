" Vim filetype plugin file
" Language:	PCEAS - PC Engine Assembler
" Maintainer:  Stephen Panicho <stephen@undo.land>
" Last Change: 2025 Jan 11

if exists('loaded_matchit') && !exists('b:match_words')
  let b:match_ignorecase = 1
  let b:match_words = '\<PH[APXY]\>:\<PL[APXY]\>,'
  \ . '\.IF((N)?DEF)?\>:\.ELSE\>:\.ENDIF\>,'
  \ . '\.MAC(RO)?\>:\.ENDM(ACRO)?\>,'
  \ . '\.PROC\>:\.ENDPROC\>,'
  \ . '\.PROCGROUP\>:\.ENDPROCGROUP\>,'
  \ . '\.STRUCT\>:\.ENDS\>,'
endif

setlocal commentstring=;%s
