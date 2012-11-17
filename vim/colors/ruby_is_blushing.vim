" Ruby {{{1
hi rubyClass guifg=#DD228D gui=bold
hi rubyModule			guifg=#FF00FC gui=bold
hi rubyDefine guifg=#FF3000 gui=bold
hi rubyFunction guifg=#FF106B gui=bold
hi rubyKeyword			guifg=#4489C6

hi rubyMethodExceptional	guifg=#D45566

hi rubyClassVariable guifg=#DB76C9
" Color anterior: #B355DD	
hi rubyInstanceVariable guifg=#F47370
hi rubyGlobalVariable guifg=#442266 gui=bold,italic
hi rubyPredefinedVariable	guifg=#4455B6
" nil self __FILE__
hi rubyPseudoVariable		guifg=#F45566 gui=bold

hi rubyConstant		guifg=#1080FF
" ARGV STDIN RUBY_PLATFORM
hi rubyPredefinedConstant guifg=#303030 gui=bold	

hi rubyBlockParameter		guifg=#04A596

hi rubyConditional guifg=#6E71DF gui=bold
" if unless
hi rubyConditionalModifier	guifg=#A245CF gui=bold
" rescue
hi rubyExceptional		guifg=#4455F6 gui=bold
hi rubyRepeat			guifg=#B455F6 gui=bold
hi rubyRepeatModifier		guifg=#4B8566 gui=bold
hi rubyOptionalDo		guifg=#795966 gui=bold
" begin end rescue return
hi rubyControl guifg=#0040B0 gui=bold
hi rubyInteger			guifg=#C44506
hi rubyASCIICode		guifg=#845889
hi rubyFloat			guifg=#665566
hi rubyBoolean			guifg=#44BD96 gui=bold
" raise
hi rubyException		guifg=#840586 gui=bold
hi rubyPredefinedIdentifier	guifg=#FFA506
hi rubyOperator		guifg=#438526
hi rubyPseudoOperator		guifg=#747566
hi rubyBeginEnd		guifg=#145526
" protected private
hi rubyAccess			guifg=#645F26
hi rubyAttribute		guifg=#2455F6
hi rubyEval			guifg=#4495D6

hi rubyComment guifg=#B69685 gui=italic
hi rubyData			guifg=#A46586
hi rubyDataDirective		guifg=#949529
hi rubyDocumentation		guifg=#145516
hi rubyTodo			guifg=#D59556 gui=bold

" #!/bin/...
hi rubySharpBang		guifg=#000000 gui=bold
hi rubyInclude			guifg=#445996

hi rubyStringDelimiter		guifg=#BDC999
hi rubyString guifg=#42956F
hi rubyQuoteEscape		guifg=#4F5586
hi rubyStringEscape		guifg=#44B596
hi rubyInterpolationDelimiter guifg=#446688	
hi rubyNoInterpolation		guifg=#715191

hi rubySymbol guifg=#25B962
hi rubySymbolDelimiter		guifg=#FF0B66

hi rubyRegexpDelimiter		guifg=#745566 gui=bold
hi rubyRegexpEscape		guifg=#745516
hi rubyRegexpQuantifier	guifg=#742566
hi rubyRegexpAnchor		guifg=#744566
hi rubyRegexpDot		guifg=#741516 gui=bold
hi rubyRegexpCharClass		guifg=#7015D6
hi rubyRegexpSpecial		guifg=#740566
hi rubyRegexpComment		guifg=#045566
hi rubyRegexp			guifg=#700888

hi rubyInvalidVariable		guifg=#745526
hi rubyError			guifg=#FF0000
hi rubySpaceError		guifg=#FFFFFF guibg=#FC0000

if !exists("ruby_no_identifiers")
	hi rubyIdentifier		guifg=#4495B6
else
	hi rubyIdentifier		guifg=#4405A6
endif


" eRuby {{{2
hi erubyComment    guifg=#4489FC
" hi erubyDelimiter
hi erubyOneLiner   guifg=#44890C
hi erubyBlock      guifg=#4409FC
hi erubyExpression guifg=#0489FC
" }}}2
