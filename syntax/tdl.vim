" Vim syntax file
" Language: To do list format
" Maintainer: Sbu
" Latest Revision: 18 April 2025

if exists("b:current_syntax")
  finish
endif


syn keyword noteskeywords wait sf meeting sfmeeting nico

" https://superuser.com/questions/1129668/simple-custom-syntax-in-vim
syn match notesBackticks "`[^`]\+`"
syn match notesBrackets "\[[^`]\+\]"
syn match notesComment "-.*$"

" hi def link noteskeywords Error
hi def link notesBackticks Error
hi def link notesBrackets Title
hi def link notesComment Comment

"    call <SID>X("Title", s:comment, "", "bold")
"    call <SID>X("Identifier", s:orange, "", "")
"    call <SID>X("Statement", s:wine, "", "")
"    call <SID>X("Conditional", s:wine, "", "")
"    call <SID>X("Repeat", s:wine, "", "")
"    call <SID>X("Structure", s:wine, "", "")
"    call <SID>X("Function", s:orange, "", "")
"    call <SID>X("Constant", s:purple, "", "")
"    call <SID>X("Keyword", s:orange, "", "")
"    call <SID>X("String", s:yellow, "", "")
"    call <SID>X("Special", s:blue, "", "")
"    call <SID>X("PreProc", s:green, "", "")
"    call <SID>X("Operator", s:purple, "", "")
"    call <SID>X("Type", s:blue, "", "")
"    call <SID>X("Define", s:wine, "", "")
"    call <SID>X("Include", s:wine, "", "")
"    call <SID>X("Tag", s:orange, "", "bold")
"    call <SID>X("Underlined", s:orange, "", "underline")

let b:current_syntax = 'nt'

