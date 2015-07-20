set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="sonofobsidian"


hi Comment          guifg=#66747B
hi Normal           guifg=#FFFFFF guibg=#22282A
hi CursorLine       guibg=#32383A
hi ColorColumn      guibg=#242b2c
hi CursorColumn     guibg=#32383A
hi Search           guibg=#808080
hi Visual           guifg=#FFFFFF guibg=#4F6164 
hi VisualNOS        guifg=#FFFFFF guibg=#4F6164 
hi Identifier       guifg=#FFFFFF
hi Number           guifg=#FFCD22 
hi Operator         guifg=#E8E2B7 
hi String           guifg=#EC7600 
hi FoldColumn       guifg=#FFFFFF guibg=#394144
hi LineNr           guifg=#3F4E49  
hi PreProc          guifg=#93C763 
hi Keyword          guifg=#93C763
hi Conditional      guifg=#93C763
hi Statement        guifg=#93C763
hi Type             guifg=#93C763
hi Structure        guifg=#93C763 
hi Tag              guifg=#93C763
hi xmlTagName       guifg=#93C763
hi xmlCdata         guifg=#99A38A
hi xmlAttrib        guifg=#678CB1
hi htmlTagName      guifg=#93C763
hi htmlArg          guifg=#678CB1
hi WarningMsg       guifg=#FFCD22
hi Folded           guifg=#808080 guibg=#1C2325
hi PMenu            guifg=#CCCCFF guibg=#1C2325
hi PMenuSel         guibg=#2C3335

"------------------------------------------------------------
"CSS settings
"------------------------------------------------------------
hi cssURL           guifg=#fd971f gui=italic
hi cssFunctionName  guifg=#E0E2E4 guibg=#2C3335 
hi cssColor         guifg=#E0E2E4   
hi cssPseudoClassId guifg=#A082BD   
hi cssClassName     guifg=#93C763  
hi cssIdentifier    guifg=#D5AB55 
hi cssTagName       guifg=#D0D2B5  
hi cssValueLength   guifg=#F0F0F0  
hi cssValueNumber   guifg=#F0F0F0  
hi cssCommonAttr    guifg=#66d9ef 
hi cssBraces        ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssFontProp      guifg=#678CB1   
hi cssColorProp     guifg=#678CB1  
hi cssTextProp      guifg=#678CB1  
hi cssBoxProp       guifg=#678CB1  
hi cssRenderProp    guifg=#678CB1  
hi cssAuralProp     guifg=#678CB1  
hi cssRenderProp    guifg=#678CB1  
hi cssGeneratedContentProp guifg=#678CB1  
hi cssPagingProp    guifg=#678CB1  
hi cssTableProp     guifg=#678CB1  
hi cssUIProp        guifg=#678CB1  
hi cssFontAttr      guifg=#E0E2E4  
hi cssColorAttr     guifg=#E0E2E4  
hi cssTextAttr      guifg=#E0E2E4  
hi cssBoxAttr       guifg=#E0E2E4  
hi cssRenderAttr    guifg=#E0E2E4  
hi cssAuralAttr     guifg=#E0E2E4  
hi cssGeneratedContentAttr guifg=#E0E2E4  
hi cssPagingAttr    guifg=#E0E2E4  
hi cssTableAttr     guifg=#E0E2E4  
hi cssUIAttr        guifg=#E0E2E4  
hi cssCommonAttr    guifg=#E0E2E4

"------------------------------------------------------------
"PHP settings
"------------------------------------------------------------
"hi phpConstant        
"hi phpCoreConstant    
hi phpComment         guifg=#66747B     
"hi phpStructure 
hi phpStringSingle    guifg=#EC7600
hi phpStringDouble    guifg=#EC7600 
hi phpNumber          guifg=#FFCD22
hi phpFloat           guifg=#FFCD22
hi phpMethods         guifg=#E8E2B7 
hi phpRepeat          guifg=#93C763 
hi phpFunctions       guifg=#E8E2B7
hi phpClasses         guifg=#E8E2B7
hi Delimiter          guifg=#E8E2B7
hi phpBaselib         guifg=#93C763
"hi phpConditional 
hi phpKeyword         guifg=#93C763 
"hi phpType  
hi phpInclude         guifg=#93C763
hi phpSpecialChar     guifg=#E0E2E4
"hi phpDefine
hi phpParent          guifg=#E0E2E4
hi phpMemberSelector  guifg=#E0E2E4
hi phpVarSelector     guifg=#678CB1
hi phpMethodsVar      guifg=#E0E2E4
hi phpComparison      guifg=#E0E2E4
hi phpIdentifier      guifg=#678CB1
"------------------------------------------------------------
"Javascript settings
"------------------------------------------------------------
  hi javaScriptComment            guifg=#66747B
  hi javaScriptLineComment        guifg=#66747B
  hi javaScriptCommentTodo        guifg=#66747B
  hi Special                      guifg=#FFFFFF
  hi javaScriptStringS            guifg=#EC7600 
  hi javaScriptStringD            guifg=#EC7600 
  hi javaScriptCharacter          guifg=#EC7600 
  hi javaScriptSpecialCharacter   guifg=#EC7600 
  hi javaScriptNumber             guifg=#FFCD22
  hi javaScriptConditional        guifg=#93C763
  hi javaScriptRepeat             guifg=#93C763
  hi javaScriptBranch             guifg=#93C763
  hi javaScriptOperator           guifg=#93C763
  hi javaScriptType               guifg=#93C763
  hi javaScriptStatement          guifg=#93C763
  hi javaScriptFunction           guifg=#93C763
  hi javaScriptBraces             guifg=#E0E2E4
  "hi javaScriptError              guifg=#
  "hi javaScrParenError            guifg=#
  hi javaScriptNull               guifg=#93C763
  hi javaScriptBoolean            guifg=#93C763
  hi javaScriptRegexpString       guifg=#EA7333 

  hi javaScriptIdentifier         guifg=#93C763
  hi javaScriptLabel              guifg=#93C763
  hi javaScriptException          guifg=#93C763
  "hi javaScriptMessage            guifg=#
  hi javaScriptGlobal             guifg=#93C763
  "hi javaScriptMember             guifg=#
  hi javaScriptDeprecated         guifg=#93C763
  hi javaScriptReserved           guifg=#93C763
  "hi javaScriptDebug              guifg=#
  "hi javaScriptConstant           guifg=#
"------------------------------------------------------------
"HTML5 settings
"------------------------------------------------------------
hi htmlH1       guifg=#FFFFFF
hi htmlH2       guifg=#FFFFFF
hi htmlH3       guifg=#FFFFFF
hi htmlH4       guifg=#FFFFFF
hi htmlH5       guifg=#FFFFFF
hi htmlH6       guifg=#FFFFFF
