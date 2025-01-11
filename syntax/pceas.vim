" Vim syntax file
" Language:    PCEAS - PC Engine Assembler
" Maintainer:  Stephen Panicho <stephen@undo.land>
" Last Change: 2025 Jan 11

if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn clear
syn case ignore

" HuC6280 instruction set
syn keyword PCEASIns
\ ADC AND ASL BBR BBR0 BBR1 BBR2 BBR3 BBR4 BBR5 BBR6 BBR7 BBS BBS0 BBS1 BBS2
\ BBS3 BBS4 BBS5 BBS6 BBS7 BIT BRK CLA CLC CLD CLI CLV CLX CLY CMP CPX CPY CSH
\ CSL DEA DEC DEX DEY EOR INA INC INX INY LDA LDX LDY LSR NOP ORA PHA PHP PHX
\ PHY PLA PLP PLX PLY RMB RMB0 RMB1 RMB2 RMB3 RMB4 RMB5 RMB6 RMB7 ROL ROR SAX
\ SAY SBC SEC SED SEI SET SMB SMB0 SMB1 SMB2 SMB3 SMB4 SMB5 SMB6 SMB7 ST0 ST1
\ ST2 STA STX STY STZ SXY TAI TAM TAM0 TAM1 TAM2 TAM3 TAM4 TAM5 TAM6 TAM7 TAX
\ TAY TDD TIA TII TIN TMA TMA0 TMA1 TMA2 TMA3 TMA4 TMA5 TMA6 TMA7 TRB TSB TST
\ TSX TXA TXS TYA

syn keyword PCEASInsBranch
\ BRA BCC BCS BEQ BMI BNE BPL BSR BVC BVS JMP JSR RTI RTS

" Operators
syn match PCEASOperator "\(+\|-\|<\|>\|&\||\|=\|!\|\~\|\^\|\*\)"

" Labels & Symbols
syn match PCEASLabel  "^[.\!]\?\w*:"he=e-1
syn match PCEASSymbol "\w\+\s*="he=e-1

" Function calls
syn match PCEASFuncCall "\<\w\+\s*("he=e-1

" Literal values
syn match PCEASLiteral "#\a\(\w\+\)\?\>"
syn match PCEASLiteral "#$\x\+\>"
syn match PCEASLiteral "#%[01]\+\>"
syn match PCEASLiteral "#\d\+\>"

" Arithmetic
syn match PCEASMath "\s\d\+\>"

" Directives
" -----------------------------------------------------------------------------
" ref: huc/src/mkit/as/inst.h & pce.h
" Data definitions
syn match PCEASDataDef "\(\s\|^\)\.\?DB\>"
syn match PCEASDataDef "\(\s\|^\)\.\?DW\>"
syn match PCEASDataDef "\(\s\|^\)\.\?DWL\>"
syn match PCEASDataDef "\(\s\|^\)\.\?DWH\>"
syn match PCEASDataDef "\(\s\|^\)\.\?DD\>"
syn match PCEASDataDef "\(\s\|^\)\.\?DS\>"
syn match PCEASDataDef "\(\s\|^\)\.TEXT\>"
syn match PCEASDataDef "\(\s\|^\)\.BYTE\>"
syn match PCEASDataDef "\(\s\|^\)\.WORD\>"
syn match PCEASDataDef "\(\s\|^\)\.DWORD\>"
syn match PCEASDataDef "\(\s\|^\)\.FILL\>"
syn match PCEASDataDef "\(\s\|^\)\.TEXT\>"
syn match PCEASDataDef "\(\s\|^\)\.ASCII\>"

" Layout
syn match PCEASLayout "\(\s\|^\)\.\?ALIGN\>"
syn match PCEASLayout "\(\s\|^\)\.\?ORG\>"
syn match PCEASLayout "\(\s\|^\)\.\?PAGE\>"
syn match PCEASLayout "\(\s\|^\)\.\?BANK\>"

" Segments
syn match PCEASSegment "\(\s\|^\)\.\?ZP\>"
syn match PCEASSegment "\(\s\|^\)\.\?BSS\>"
syn match PCEASSegment "\(\s\|^\)\.\?CODE\>"
syn match PCEASSegment "\(\s\|^\)\.\?DATA\>"
syn match PCEASSegment "\(\s\|^\)\.ZEROPAGE\>"
syn match PCEASSegment "\(\s\|^\)\.SEGMENT\>"
syn match PCEASSegment "\(\s\|^\)\.AREA\>"

" Includes
syn match PCEASInclude "\(\s\|^\)\.\?INCLUDE\>"
syn match PCEASInclude "\(\s\|^\)\.\?INCBIN\>"
syn match PCEASInclude "\(\s\|^\)\.\?INCCHR\>"
syn match PCEASInclude "\(\s\|^\)\.\?INCCHRPAL\>"
syn match PCEASInclude "\(\s\|^\)\.\?INCSPR\>"
syn match PCEASInclude "\(\s\|^\)\.\?INCSPRPAL\>"
syn match PCEASInclude "\(\s\|^\)\.\?INCTILE\>"
syn match PCEASInclude "\(\s\|^\)\.\?INCTILEPAL\>"
syn match PCEASInclude "\(\s\|^\)\.\?INCPAL\>"
syn match PCEASInclude "\(\s\|^\)\.\?INCBAT\>"
syn match PCEASInclude "\(\s\|^\)\.\?INCMAP\>"
syn match PCEASInclude "\(\s\|^\)\.MODULE\>"

" Symbol & label definitions
syn match PCEASSymDef "\(\s\|^\)\.\?EQU\>"
syn match PCEASSymDef "\(\s\|^\)\.\?LABEL\>"
syn match PCEASSymDef "\(\s\|^\)\.\?VRAM\>"
syn match PCEASSymDef "\(\s\|^\)\.\?PAL\>"
syn match PCEASSymDef "\(\s\|^\)\.\?RS\>"
syn match PCEASSymDef "\(\s\|^\)\.\?RSSET\>"
syn match PCEASSymDef "\(\s\|^\)\.SET\>"
syn match PCEASSymDef "\(\s\|^\)\.CONST\>"
syn match PCEASSymDef "\(\s\|^\)\.LABEL\>"
syn match PCEASSymDef "\(\s\|^\)\.VAR\>"

" Graphics definitions
syn match PCEASGfxDef "\(\s\|^\)\.\?DEFPAL\>"
syn match PCEASGfxDef "\(\s\|^\)\.\?DEFSPR\>"
syn match PCEASGfxDef "\(\s\|^\)\.\?DEFCHR\>"

" Music
syn match PCEASMMLDef "\(\s\|^\)\.\?MML\>"

" Functions
syn match PCEASFunc "\(\s\|^\)\.\?FUNC\>"

" Conditionals
syn match PCEASCondit "\(\s\|^\)\.\?IF\>"
syn match PCEASCondit "\(\s\|^\)\.\?ELSE\>"
syn match PCEASCondit "\(\s\|^\)\.\?ENDIF\>"
syn match PCEASCondit "\(\s\|^\)\.\?IFDEF\>"
syn match PCEASCondit "\(\s\|^\)\.\?IFNDEF\>"

" Structs
syn match PCEASStruct "\(\s\|^\)\.\?STRUCT\>"
syn match PCEASStruct "\(\s\|^\)\.\?ENDS\>"

" Procs
syn match PCEASProc      "\(\s\|^\)\.\?PROC\>"
syn match PCEASProc      "\(\s\|^\)\.\?ENDP\>"
syn match PCEASProc      "\(\s\|^\)\.\?PROCGROUP\>"
syn match PCEASProc      "\(\s\|^\)\.\?ENDPROCGROUP\>"
syn match PCEASProcCall  "\(\s\|^\)\.\?CALL\>"
syn match PCEASProcLeave "\<LEAVE\>"

" Macros
syn match PCEASMacro    "\(\s\|^\)\.\?MAC\(RO\)\?\>"
syn match PCEASMacro    "\(\s\|^\)\.\?ENDM\(ACRO\)\?\>"
syn match PCEASMacroArg "\\\([0-9#@]\|?[0-9]\)"

" Error handling
syn match PCEASFail "\(\s\|^\)\.\?FAIL\>"

" Assembler Options
syn match PCEASOption "\(\s\|^\)\.\?OPT\>"
syn match PCEASOption "\(\s\|^\)\.\?LIST\>"
syn match PCEASOption "\(\s\|^\)\.\?MLIST\>"
syn match PCEASOption "\(\s\|^\)\.\?NOLIST\>"
syn match PCEASOption "\(\s\|^\)\.\?NOMLIST\>"

" KickAssembler support
syn match PCEASCompatKick "\(\s\|^\)\.KICKC\>"
syn match PCEASCompatKick "\(\s\|^\)\.PCEAS\>"
" .TEXT, .FILL and .SEGMENT belong here, but are in PCEASDataDef
" .CONST, .LABEL, and .VAR are in PCEASSym
syn match PCEASNotImplemented "\(\s\|^\)\.CPU\>"
syn match PCEASNotImplemented "\(\s\|^\)\.ENCODING\>"

" SDCC support
syn match PCEASCompatSDCC "\(\s\|^\)\.R6502\>"
syn match PCEASCompatSDCC "\(\s\|^\)\.R65C02\>"
" .ASCII  -> PCEASDataDef
" .AREA   -> PCEASSegment
" .MODULE -> PCEASInclude
syn match PCEASNotImplemented "\(\s\|^\)\.GLOBL\>"
syn match PCEASNotImplemented "\(\s\|^\)\.OPTSDCC\>"

" HuCC support
syn match PCEASCompatHuCC "\(\s\|^\)\.HUCC\>"

" Undocumented
syn match PCEASDirective "\(\s\|^\)\.3PASS\>"
syn match PCEASDirective "\(\s\|^\)\.ALIAS\>"
syn match PCEASDirective "\(\s\|^\)\.REF\>"
syn match PCEASDirective "\(\s\|^\)\.PHASE\>"
syn match PCEASDirective "\(\s\|^\)\.DEPHASE\>"
syn match PCEASDirective "\(\s\|^\)\.DBG\>"
" -----------------------------------------------------------------------------

" Strings
syn region PCEASString start='"' end='"'

" Comments
syn keyword PCEASTodo TODO NOTE XXX FIXME BUG contained

syn match  PCEASComment ";.*"                 contains=PCEASTodo
syn match  PCEASComment "//.*"                contains=PCEASTodo
syn region PCEASComment start="/\*" end="\*/" contains=PCEASTodo

" Highlight groups
hi def link PCEASIns       Keyword
hi def link PCEASInsBranch Special

hi def link PCEASLiteral  Number
hi def link PCEASMath     Delimiter
hi def link PCEASString   String
hi def link PCEASOperator Operator
hi def link PCEASLabel    Typedef
hi def link PCEASSymbol   NONE
hi def link PCEASComment  Comment
hi def link PCEASTodo     Todo
hi def link PCEASFuncCall Function

hi def link PCEASDataDef Type
hi def link PCEASLayout  PreProc
hi def link PCEASSegment StorageClass
hi def link PCEASInclude Include
hi def link PCEASSymDef  PreProc
hi def link PCEASGfxDef  PreProc
hi def link PCEASMusic   PreProc
hi def link PCEASFunc    PreProc
hi def link PCEASCondit  PreCondit
hi def link PCEASStruct  Structure

hi def link PCEASProc      Structure
hi def link PCEASProcCall  Special
hi def link PCEASProcLeave Special

hi def link PCEASMacro    Macro
hi def link PCEASMacroArg Macro

hi def link PCEASFail   Debug
hi def link PCEASOption PreProc

hi def link PCEASCompatKick Special
hi def link PCEASCompatSDCC Special
hi def link PCEASCompatHuCC Special

hi def link PCEASDirective      PreProc
hi def link PCEASNotImplemented Error

syn case match
let b:current_syntax = "pceas"

let &cpo = s:cpo_save
unlet s:cpo_save
