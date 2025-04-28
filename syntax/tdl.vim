" Vim syntax file
" Language: To do list format
" Maintainer: BlueInt32
" Latest Revision: 18 April 2025

" Creating custom syntax - https://vim.fandom.com/wiki/Creating_your_own_syntax_files
" Creating really simple custom syntax - https://superuser.com/a/1129970

if exists("b:current_syntax")
  finish
endif

" tell that the syntax doesn't care about keywords case
syn case ignore

" keywords
syn keyword tdlOrange refac[to] perf[ormance] tech[nical] contained sf sfmeeting
syn keyword tdlSoftBlue feat[ure] contained wait[ing] hr ISN buffer doc
syn keyword tdlRed bug contained flow1 flow2 flow3 flow4 flow5 flow6 review
syn keyword tdlGreen sadan nico[las] rudy francois amit diw[akar] justin
syn keyword tdlPink gvim

syn match tdlH1 /===[^`]\+===/
syn match tdlH2 /\*\*[^`]\+\*\*/

syn match tdlComments /^\/\/.*/
syn match tdlBackticks /`[^`]\+`/
syn match tdlBrackets /\[[^`]\+\]/ contains=tdlOrange,tdlSoftBlue,tdlRed,tdlGreen,tdlPink
syn match tdlSubs /^\s\+-.*$/
syn match tdlLinks /http[^`]\+/
" syn region notesBrackets start=/[/ end=/]/ transparent contains=tdlSoftBlue,tdlOrange,tdlRed

" hi def link noteskeywords Error
hi def link tdlH1 String
hi def link tdlH2 PreProc
hi def link tdlComments Comment
hi def link tdlSoftBlue Special
hi def link tdlOrange Function
" hi def link tdlOrange tdlTag
hi def link tdlRed javaScriptError
hi def link tdlBackticks Constant
hi def link tdlBrackets Comment
hi def link tdlLinks Include
hi def link tdlSubs Comment
hi def link tdlGreen tdlGreen
hi def link tdlPink Statement

let b:current_syntax = 'tdl'

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


" Standard hilighted in vim https://vimhelp.org/syntax.txt.html#group-name

" *Comment	any comment
"
" *Constant	any constant
"  String		a string constant: "this is a string"
"  Character	a character constant: 'c', '\n'
"  Number		a number constant: 234, 0xff
"  Boolean	a boolean constant: TRUE, false
"  Float		a floating point constant: 2.3e10
"
" *Identifier	any variable name
"  Function	function name (also: methods for classes)
"
" *Statement	any statement
"  Conditional	if, then, else, endif, switch, etc.
"  Repeat		for, do, while, etc.
"  Label		case, default, etc.
"  Operator	"sizeof", "+", "*", etc.
"  Keyword	any other keyword
"  Exception	try, catch, throw
"
" *PreProc	generic Preprocessor
"  Include	preprocessor #include
"  Define		preprocessor #define
"  Macro		same as Define
"  PreCondit	preprocessor #if, #else, #endif, etc.
"
" *Type		int, long, char, etc.
"  StorageClass	static, register, volatile, etc.
"  Structure	struct, union, enum, etc.
"  Typedef	A typedef
"
" *Special	any special symbol
"  SpecialChar	special character in a constant
"  Tag		you can use CTRL-] on this
"  Delimiter	character that needs attention
"  SpecialComment	special things inside a comment
"  Debug		debugging statements
"
" *Underlined	text that stands out, HTML links
"
" *Ignore		left blank, hidden  hl-Ignore
"
" *Error		any erroneous construct
"
" *Todo		anything that needs extra attention; mostly the
" 		keywords TODO FIXME and XXX
"
" *Added		added line in a diff
" *Changed	changed line in a diff
" *Removed	removed line in a diff