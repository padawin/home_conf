syn match    pyCustomParen     "(" contains=cParen
syn match    pyCustomFunc      "\w\+\s*(" contains=pyCustomParen
syn match    pyCustomScope     "\."
syn match    pyCustomAttribute "\.\w\+" contains=pyCustomScope
syn match    pyCustomMethod    "\.\w\+\s*(" contains=pyCustomScope,pyCustomParen

hi def link pyCustomFunc  Function
hi def link pyCustomMethod Function
hi def link pyCustomAttribute Identifier

highlight pyCustomFunc ctermfg=43
highlight pyCustomAttribute ctermfg=247
highlight pyCustomMethod ctermfg=33

highlight pythonSelf ctermfg=33 cterm=bold
