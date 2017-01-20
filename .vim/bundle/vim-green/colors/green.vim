" This scheme was created by CSApproxSnapshot
" on Sun, 28 Aug 2016

hi clear
if exists("syntax_on")
    syntax reset
endif

if v:version < 700
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" substitute(substitute(<q-args>, "undercurl", "underline", "g"), "guisp\\S\\+", "", "g")
else
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" <q-args>
endif

function! s:old_kde()
  " Konsole only used its own palette up til KDE 4.2.0
  if executable('kde4-config') && system('kde4-config --kde-version') =~ '^4.[10].'
    return 1
  elseif executable('kde-config') && system('kde-config --version') =~# 'KDE: 3.'
    return 1
  else
    return 0
  endif
endfunction

if 0
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_konsole") && g:CSApprox_konsole) || (&term =~? "^konsole" && s:old_kde())
    CSAHi Normal term=NONE cterm=NONE ctermbg=22 ctermfg=22 gui=NONE guibg=#14290d guifg=#7e8b8c guisp=#14290d
    CSAHi PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi pythonbuiltin term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#839496
    CSAHi csRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Repeat term=NONE cterm=NONE ctermbg=bg ctermfg=106 gui=NONE guibg=bg guifg=#719e07
    CSAHi CTagsClass term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#2aa198
    CSAHi Label term=NONE cterm=NONE ctermbg=bg ctermfg=106 gui=NONE guibg=bg guifg=#719e07
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi Union term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi mbevisiblenormal term=NONE cterm=NONE ctermbg=103 ctermfg=103 gui=NONE guibg=#4e4e8f guifg=#cfcfcd guisp=#4e4e8f
    CSAHi user2 term=NONE cterm=NONE ctermbg=60 ctermfg=60 gui=NONE guibg=#3e3e5e guifg=#7070a0 guisp=#3e3e5e
    CSAHi user1 term=NONE cterm=NONE ctermbg=60 ctermfg=60 gui=NONE guibg=#3e3e5e guifg=#00ff8b guisp=#3e3e5e
    CSAHi doxygenspecialonelinedesc term=NONE cterm=NONE ctermbg=bg ctermfg=136 gui=NONE guibg=bg guifg=#ad600b
    CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi doxygensmallspecial term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=NONE guibg=bg guifg=#fdd090
    CSAHi Include term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi CTagsMember term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsGlobalConstant term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=16 gui=NONE guibg=bg guifg=#000000
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#2aa198
    CSAHi EnumerationValue term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi doxygenspecialmultilinedesc term=NONE cterm=NONE ctermbg=bg ctermfg=136 gui=NONE guibg=bg guifg=#ad600b
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi SpecialKey term=bold cterm=bold ctermbg=58 ctermfg=58 gui=bold guibg=#1e4007 guifg=#87875f guisp=#1e4007
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=103 gui=bold guibg=bg guifg=#657b83
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#268bd2
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=59 ctermfg=59 gui=NONE guibg=#1f2b1f guifg=#af5f5f guisp=#1f2b1f
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi Search term=reverse cterm=NONE ctermbg=144 ctermfg=144 gui=NONE guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#268bd2
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=144 gui=bold guibg=bg guifg=#87875f
    CSAHi Tag term=NONE cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#dc322f
    CSAHi javascriptstrings term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi mbechanged term=NONE cterm=NONE ctermbg=59 ctermfg=59 gui=NONE guibg=#2e2e3f guifg=#eeeeee guisp=#2e2e3f
    CSAHi phpstringdouble term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi doxygenbrief term=NONE cterm=NONE ctermbg=bg ctermfg=216 gui=NONE guibg=bg guifg=#fdab60
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=106 gui=NONE guibg=bg guifg=#719e07
    CSAHi cformat term=NONE cterm=NONE ctermbg=238 ctermfg=238 gui=NONE guibg=#404040 guifg=#c080d0 guisp=#404040
    CSAHi xmlSyncDT term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi doxygencomment term=NONE cterm=NONE ctermbg=bg ctermfg=137 gui=NONE guibg=bg guifg=#ad7b20
    CSAHi cspecialcharacter term=NONE cterm=NONE ctermbg=238 ctermfg=238 gui=NONE guibg=#404040 guifg=#c080d0 guisp=#404040
    CSAHi SpellCap term=reverse cterm=NONE ctermbg=210 ctermfg=210 gui=NONE guibg=#ff6060 guifg=#e2e4e5 guisp=#ff6060
    CSAHi SpellRare term=reverse cterm=NONE ctermbg=207 ctermfg=207 gui=NONE guibg=#ff40ff guifg=#e2e4e5 guisp=#ff40ff
    CSAHi SpellLocal term=underline cterm=NONE ctermbg=226 ctermfg=226 gui=NONE guibg=#ffff00 guifg=#e2e4e5 guisp=#ffff00
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=144 ctermfg=144 gui=NONE guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=230 ctermfg=230 gui=NONE guibg=#eee8d5 guifg=#586e75 guisp=#eee8d5
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=59 ctermfg=59 gui=NONE guibg=#384235 guifg=#eee8d5 guisp=#384235
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=145 ctermfg=145 gui=NONE guibg=#91908c guifg=#333325 guisp=#91908c
    CSAHi TabLine term=underline cterm=underline ctermbg=144 ctermfg=144 gui=underline guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi TabLineSel term=bold cterm=bold ctermbg=230 ctermfg=230 gui=bold guibg=#eee8d5 guifg=#2d3f45 guisp=#eee8d5
    CSAHi TabLineFill term=reverse cterm=underline ctermbg=144 ctermfg=144 gui=underline guibg=#87875f guifg=#5c5c5c guisp=#87875f
    CSAHi htmlstring term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#038c81
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#dc322f
    CSAHi Function term=NONE cterm=bold ctermbg=bg ctermfg=67 gui=bold guibg=bg guifg=#4b718a
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=173 gui=NONE guibg=bg guifg=#b86228
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#2aa198
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=106 gui=NONE guibg=bg guifg=#719e07
    CSAHi DefinedName term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Debug term=NONE cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#dc322f
    CSAHi Identifier term=underline cterm=bold ctermbg=bg ctermfg=109 gui=bold guibg=bg guifg=#6e828f
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#dc322f
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=106 gui=NONE guibg=bg guifg=#719e07
    CSAHi StorageClass term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi Todo term=NONE cterm=bold ctermbg=102 ctermfg=102 gui=bold guibg=#537353 guifg=#3f0573 guisp=#537353
    CSAHi Character term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#2aa198
    CSAHi LineNr term=underline cterm=NONE ctermbg=22 ctermfg=22 gui=NONE guibg=#14290d guifg=#586e75 guisp=#14290d
    CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=#ffff00
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=144 gui=bold guibg=bg guifg=#87875f
    CSAHi StatusLine term=bold,reverse cterm=bold ctermbg=144 ctermfg=144 gui=bold guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=144 ctermfg=144 gui=NONE guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=101 ctermfg=101 gui=NONE guibg=#515c2b guifg=#87875f guisp=#515c2b
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#cb4b16
    CSAHi Visual term=reverse cterm=NONE ctermbg=144 ctermfg=144 gui=NONE guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi VisualNOS term=bold,underline cterm=bold ctermbg=22 ctermfg=22 gui=bold guibg=#114007 guifg=#e0e3e0 guisp=#114007
    CSAHi WarningMsg term=NONE cterm=bold ctermbg=bg ctermfg=167 gui=bold guibg=bg guifg=#dc322f
    CSAHi htmltagname term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi doxygenspecial term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=NONE guibg=bg guifg=#fdd090
    CSAHi mbevisiblechanged term=NONE cterm=NONE ctermbg=103 ctermfg=103 gui=NONE guibg=#4e4e8f guifg=#eeeeee guisp=#4e4e8f
    CSAHi Macro term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=104 gui=underline guibg=bg guifg=#6c71c4
    CSAHi cursorim term=NONE cterm=NONE ctermbg=147 ctermfg=147 gui=NONE guibg=#8b8bff guifg=#404040 guisp=#8b8bff
    CSAHi CTagsImport term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsGlobalVariable term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#dc322f
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=106 gui=NONE guibg=bg guifg=#719e07
    CSAHi LocalVariable term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi doxygenprev term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=NONE guibg=bg guifg=#fdd090
    CSAHi phpstringsingle term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=58 ctermfg=58 gui=NONE guibg=#234007 guifg=#e2e4e5 guisp=#234007
    CSAHi CursorLine term=underline cterm=underline ctermbg=22 ctermfg=22 gui=underline guibg=#114007 guifg=#e2e4e5 guisp=#114007
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=124 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=144 ctermfg=144 gui=NONE guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi lCursor term=NONE cterm=NONE ctermbg=157 ctermfg=157 gui=NONE guibg=#8fff8b guifg=#404040 guisp=#8fff8b
    CSAHi MatchParen term=reverse cterm=bold ctermbg=59 ctermfg=59 gui=bold guibg=#294025 guifg=#af5f5f guisp=#294025
    CSAHi xmlDocType term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi taglisttagname term=NONE cterm=NONE ctermbg=bg ctermfg=147 gui=NONE guibg=bg guifg=#808bed
    CSAHi doxygenparam term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=NONE guibg=bg guifg=#fdd090
    CSAHi perlspecialstring term=NONE cterm=NONE ctermbg=238 ctermfg=238 gui=NONE guibg=#404040 guifg=#c080d0 guisp=#404040
    CSAHi EnumerationName term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=138 gui=NONE guibg=bg guifg=#af5f5f
    CSAHi xmlEqual term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=106 gui=NONE guibg=bg guifg=#719e07
    CSAHi perlspecialmatch term=NONE cterm=NONE ctermbg=238 ctermfg=238 gui=NONE guibg=#404040 guifg=#c080d0 guisp=#404040
    CSAHi mbenormal term=NONE cterm=NONE ctermbg=59 ctermfg=59 gui=NONE guibg=#2e2e3f guifg=#cfbfad guisp=#2e2e3f
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=108 gui=italic guibg=bg guifg=#548f54
    CSAHi Error term=reverse cterm=bold ctermbg=144 ctermfg=144 gui=bold guibg=#87875f guifg=#b52a28 guisp=#87875f
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#2aa198
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=22 ctermfg=22 gui=NONE guibg=#154007 guifg=#eee8d5 guisp=#154007
    CSAHi Folded term=NONE cterm=bold ctermbg=59 ctermfg=59 gui=bold guibg=#284021 guifg=#87875f guisp=#284021
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=59 ctermfg=59 gui=NONE guibg=#284021 guifg=#87875f guisp=#284021
    CSAHi DiffAdd term=bold cterm=bold ctermbg=58 ctermfg=58 gui=bold guibg=#2e3609 guifg=#87875f guisp=#2e3609
    CSAHi DiffChange term=bold cterm=bold ctermbg=144 ctermfg=144 gui=bold guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi DiffDelete term=bold cterm=bold ctermbg=58 ctermfg=58 gui=bold guibg=#2e3609 guifg=#af5f5f guisp=#2e3609
    CSAHi DiffText term=reverse cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#2aa198
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=250 gui=NONE guibg=#bebebe guifg=#839496 guisp=#bebebe
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=NONE ctermbg=147 ctermfg=147 gui=NONE guibg=#8080ff guifg=#e2e4e5 guisp=#8080ff
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_eterm") && g:CSApprox_eterm) || &term =~? "^eterm"
    CSAHi Normal term=NONE cterm=NONE ctermbg=22 ctermfg=22 gui=NONE guibg=#14290d guifg=#7e8b8c guisp=#14290d
    CSAHi PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=209 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi pythonbuiltin term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#839496
    CSAHi csRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Repeat term=NONE cterm=NONE ctermbg=bg ctermfg=148 gui=NONE guibg=bg guifg=#719e07
    CSAHi CTagsClass term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#2aa198
    CSAHi Label term=NONE cterm=NONE ctermbg=bg ctermfg=148 gui=NONE guibg=bg guifg=#719e07
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi Union term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=209 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi mbevisiblenormal term=NONE cterm=NONE ctermbg=103 ctermfg=103 gui=NONE guibg=#4e4e8f guifg=#cfcfcd guisp=#4e4e8f
    CSAHi user2 term=NONE cterm=NONE ctermbg=60 ctermfg=60 gui=NONE guibg=#3e3e5e guifg=#7070a0 guisp=#3e3e5e
    CSAHi user1 term=NONE cterm=NONE ctermbg=60 ctermfg=60 gui=NONE guibg=#3e3e5e guifg=#00ff8b guisp=#3e3e5e
    CSAHi doxygenspecialonelinedesc term=NONE cterm=NONE ctermbg=bg ctermfg=172 gui=NONE guibg=bg guifg=#ad600b
    CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi doxygensmallspecial term=NONE cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=#fdd090
    CSAHi Include term=NONE cterm=NONE ctermbg=bg ctermfg=209 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi CTagsMember term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsGlobalConstant term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=16 gui=NONE guibg=bg guifg=#000000
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#2aa198
    CSAHi EnumerationValue term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi doxygenspecialmultilinedesc term=NONE cterm=NONE ctermbg=bg ctermfg=172 gui=NONE guibg=bg guifg=#ad600b
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi SpecialKey term=bold cterm=bold ctermbg=64 ctermfg=64 gui=bold guibg=#1e4007 guifg=#87875f guisp=#1e4007
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=109 gui=bold guibg=bg guifg=#657b83
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=75 gui=NONE guibg=bg guifg=#268bd2
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=59 ctermfg=59 gui=NONE guibg=#1f2b1f guifg=#af5f5f guisp=#1f2b1f
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=bg ctermfg=209 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi Search term=reverse cterm=NONE ctermbg=144 ctermfg=144 gui=NONE guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=75 gui=NONE guibg=bg guifg=#268bd2
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=144 gui=bold guibg=bg guifg=#87875f
    CSAHi Tag term=NONE cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#dc322f
    CSAHi javascriptstrings term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi mbechanged term=NONE cterm=NONE ctermbg=59 ctermfg=59 gui=NONE guibg=#2e2e3f guifg=#eeeeee guisp=#2e2e3f
    CSAHi phpstringdouble term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi doxygenbrief term=NONE cterm=NONE ctermbg=bg ctermfg=222 gui=NONE guibg=bg guifg=#fdab60
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=148 gui=NONE guibg=bg guifg=#719e07
    CSAHi cformat term=NONE cterm=NONE ctermbg=238 ctermfg=238 gui=NONE guibg=#404040 guifg=#c080d0 guisp=#404040
    CSAHi xmlSyncDT term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi doxygencomment term=NONE cterm=NONE ctermbg=bg ctermfg=179 gui=NONE guibg=bg guifg=#ad7b20
    CSAHi cspecialcharacter term=NONE cterm=NONE ctermbg=238 ctermfg=238 gui=NONE guibg=#404040 guifg=#c080d0 guisp=#404040
    CSAHi SpellCap term=reverse cterm=NONE ctermbg=210 ctermfg=210 gui=NONE guibg=#ff6060 guifg=#e2e4e5 guisp=#ff6060
    CSAHi SpellRare term=reverse cterm=NONE ctermbg=213 ctermfg=213 gui=NONE guibg=#ff40ff guifg=#e2e4e5 guisp=#ff40ff
    CSAHi SpellLocal term=underline cterm=NONE ctermbg=226 ctermfg=226 gui=NONE guibg=#ffff00 guifg=#e2e4e5 guisp=#ffff00
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=144 ctermfg=144 gui=NONE guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=231 ctermfg=231 gui=NONE guibg=#eee8d5 guifg=#586e75 guisp=#eee8d5
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=65 ctermfg=65 gui=NONE guibg=#384235 guifg=#eee8d5 guisp=#384235
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=145 ctermfg=145 gui=NONE guibg=#91908c guifg=#333325 guisp=#91908c
    CSAHi TabLine term=underline cterm=underline ctermbg=144 ctermfg=144 gui=underline guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi TabLineSel term=bold cterm=bold ctermbg=231 ctermfg=231 gui=bold guibg=#eee8d5 guifg=#2d3f45 guisp=#eee8d5
    CSAHi TabLineFill term=reverse cterm=underline ctermbg=144 ctermfg=144 gui=underline guibg=#87875f guifg=#5c5c5c guisp=#87875f
    CSAHi htmlstring term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#038c81
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#dc322f
    CSAHi Function term=NONE cterm=bold ctermbg=bg ctermfg=109 gui=bold guibg=bg guifg=#4b718a
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=173 gui=NONE guibg=bg guifg=#b86228
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#2aa198
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=148 gui=NONE guibg=bg guifg=#719e07
    CSAHi DefinedName term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Debug term=NONE cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#dc322f
    CSAHi Identifier term=underline cterm=bold ctermbg=bg ctermfg=145 gui=bold guibg=bg guifg=#6e828f
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#dc322f
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=148 gui=NONE guibg=bg guifg=#719e07
    CSAHi StorageClass term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#b58900
    CSAHi Todo term=NONE cterm=bold ctermbg=108 ctermfg=108 gui=bold guibg=#537353 guifg=#3f0573 guisp=#537353
    CSAHi Character term=NONE cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#2aa198
    CSAHi LineNr term=underline cterm=NONE ctermbg=22 ctermfg=22 gui=NONE guibg=#14290d guifg=#586e75 guisp=#14290d
    CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=#ffff00
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=144 gui=bold guibg=bg guifg=#87875f
    CSAHi StatusLine term=bold,reverse cterm=bold ctermbg=144 ctermfg=144 gui=bold guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=144 ctermfg=144 gui=NONE guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=101 ctermfg=101 gui=NONE guibg=#515c2b guifg=#87875f guisp=#515c2b
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=209 gui=bold guibg=bg guifg=#cb4b16
    CSAHi Visual term=reverse cterm=NONE ctermbg=144 ctermfg=144 gui=NONE guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi VisualNOS term=bold,underline cterm=bold ctermbg=28 ctermfg=28 gui=bold guibg=#114007 guifg=#e0e3e0 guisp=#114007
    CSAHi WarningMsg term=NONE cterm=bold ctermbg=bg ctermfg=203 gui=bold guibg=bg guifg=#dc322f
    CSAHi htmltagname term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi doxygenspecial term=NONE cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=#fdd090
    CSAHi mbevisiblechanged term=NONE cterm=NONE ctermbg=103 ctermfg=103 gui=NONE guibg=#4e4e8f guifg=#eeeeee guisp=#4e4e8f
    CSAHi Macro term=NONE cterm=NONE ctermbg=bg ctermfg=209 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=147 gui=underline guibg=bg guifg=#6c71c4
    CSAHi cursorim term=NONE cterm=NONE ctermbg=147 ctermfg=147 gui=NONE guibg=#8b8bff guifg=#404040 guisp=#8b8bff
    CSAHi CTagsImport term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsGlobalVariable term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#dc322f
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=148 gui=NONE guibg=bg guifg=#719e07
    CSAHi LocalVariable term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi doxygenprev term=NONE cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=#fdd090
    CSAHi phpstringsingle term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=64 ctermfg=64 gui=NONE guibg=#234007 guifg=#e2e4e5 guisp=#234007
    CSAHi CursorLine term=underline cterm=underline ctermbg=28 ctermfg=28 gui=underline guibg=#114007 guifg=#e2e4e5 guisp=#114007
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=124 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=144 ctermfg=144 gui=NONE guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi lCursor term=NONE cterm=NONE ctermbg=157 ctermfg=157 gui=NONE guibg=#8fff8b guifg=#404040 guisp=#8fff8b
    CSAHi MatchParen term=reverse cterm=bold ctermbg=65 ctermfg=65 gui=bold guibg=#294025 guifg=#af5f5f guisp=#294025
    CSAHi xmlDocType term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi taglisttagname term=NONE cterm=NONE ctermbg=bg ctermfg=147 gui=NONE guibg=bg guifg=#808bed
    CSAHi doxygenparam term=NONE cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=#fdd090
    CSAHi perlspecialstring term=NONE cterm=NONE ctermbg=238 ctermfg=238 gui=NONE guibg=#404040 guifg=#c080d0 guisp=#404040
    CSAHi EnumerationName term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=174 gui=NONE guibg=bg guifg=#af5f5f
    CSAHi xmlEqual term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=148 gui=NONE guibg=bg guifg=#719e07
    CSAHi perlspecialmatch term=NONE cterm=NONE ctermbg=238 ctermfg=238 gui=NONE guibg=#404040 guifg=#c080d0 guisp=#404040
    CSAHi mbenormal term=NONE cterm=NONE ctermbg=59 ctermfg=59 gui=NONE guibg=#2e2e3f guifg=#cfbfad guisp=#2e2e3f
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=108 gui=italic guibg=bg guifg=#548f54
    CSAHi Error term=reverse cterm=bold ctermbg=144 ctermfg=144 gui=bold guibg=#87875f guifg=#b52a28 guisp=#87875f
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#2aa198
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=28 ctermfg=28 gui=NONE guibg=#154007 guifg=#eee8d5 guisp=#154007
    CSAHi Folded term=NONE cterm=bold ctermbg=65 ctermfg=65 gui=bold guibg=#284021 guifg=#87875f guisp=#284021
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=65 ctermfg=65 gui=NONE guibg=#284021 guifg=#87875f guisp=#284021
    CSAHi DiffAdd term=bold cterm=bold ctermbg=58 ctermfg=58 gui=bold guibg=#2e3609 guifg=#87875f guisp=#2e3609
    CSAHi DiffChange term=bold cterm=bold ctermbg=144 ctermfg=144 gui=bold guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi DiffDelete term=bold cterm=bold ctermbg=58 ctermfg=58 gui=bold guibg=#2e3609 guifg=#af5f5f guisp=#2e3609
    CSAHi DiffText term=reverse cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#2aa198
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=250 gui=NONE guibg=#bebebe guifg=#839496 guisp=#bebebe
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=231 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=NONE ctermbg=147 ctermfg=147 gui=NONE guibg=#8080ff guifg=#e2e4e5 guisp=#8080ff
elseif has("gui_running") || &t_Co == 256
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=16 gui=NONE guibg=#14290d guifg=#7e8b8c guisp=#14290d
    CSAHi PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi pythonbuiltin term=NONE cterm=NONE ctermbg=bg ctermfg=102 gui=NONE guibg=bg guifg=#839496
    CSAHi csRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Repeat term=NONE cterm=NONE ctermbg=bg ctermfg=70 gui=NONE guibg=bg guifg=#719e07
    CSAHi CTagsClass term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#2aa198
    CSAHi Label term=NONE cterm=NONE ctermbg=bg ctermfg=70 gui=NONE guibg=bg guifg=#719e07
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=136 gui=NONE guibg=bg guifg=#b58900
    CSAHi Union term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi mbevisiblenormal term=NONE cterm=NONE ctermbg=60 ctermfg=60 gui=NONE guibg=#4e4e8f guifg=#cfcfcd guisp=#4e4e8f
    CSAHi user2 term=NONE cterm=NONE ctermbg=59 ctermfg=59 gui=NONE guibg=#3e3e5e guifg=#7070a0 guisp=#3e3e5e
    CSAHi user1 term=NONE cterm=NONE ctermbg=59 ctermfg=59 gui=NONE guibg=#3e3e5e guifg=#00ff8b guisp=#3e3e5e
    CSAHi doxygenspecialonelinedesc term=NONE cterm=NONE ctermbg=bg ctermfg=130 gui=NONE guibg=bg guifg=#ad600b
    CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=136 gui=NONE guibg=bg guifg=#b58900
    CSAHi doxygensmallspecial term=NONE cterm=NONE ctermbg=bg ctermfg=222 gui=NONE guibg=bg guifg=#fdd090
    CSAHi Include term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi CTagsMember term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsGlobalConstant term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=16 gui=NONE guibg=bg guifg=#000000
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#2aa198
    CSAHi EnumerationValue term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi doxygenspecialmultilinedesc term=NONE cterm=NONE ctermbg=bg ctermfg=130 gui=NONE guibg=bg guifg=#ad600b
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=136 gui=NONE guibg=bg guifg=#b58900
    CSAHi SpecialKey term=bold cterm=bold ctermbg=22 ctermfg=22 gui=bold guibg=#1e4007 guifg=#87875f guisp=#1e4007
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=66 gui=bold guibg=bg guifg=#657b83
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=#268bd2
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=16 ctermfg=16 gui=NONE guibg=#1f2b1f guifg=#af5f5f guisp=#1f2b1f
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi Search term=reverse cterm=NONE ctermbg=101 ctermfg=101 gui=NONE guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=#268bd2
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=101 gui=bold guibg=bg guifg=#87875f
    CSAHi Tag term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#dc322f
    CSAHi javascriptstrings term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi mbechanged term=NONE cterm=NONE ctermbg=17 ctermfg=17 gui=NONE guibg=#2e2e3f guifg=#eeeeee guisp=#2e2e3f
    CSAHi phpstringdouble term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi doxygenbrief term=NONE cterm=NONE ctermbg=bg ctermfg=215 gui=NONE guibg=bg guifg=#fdab60
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=70 gui=NONE guibg=bg guifg=#719e07
    CSAHi cformat term=NONE cterm=NONE ctermbg=238 ctermfg=238 gui=NONE guibg=#404040 guifg=#c080d0 guisp=#404040
    CSAHi xmlSyncDT term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi doxygencomment term=NONE cterm=NONE ctermbg=bg ctermfg=136 gui=NONE guibg=bg guifg=#ad7b20
    CSAHi cspecialcharacter term=NONE cterm=NONE ctermbg=238 ctermfg=238 gui=NONE guibg=#404040 guifg=#c080d0 guisp=#404040
    CSAHi SpellCap term=reverse cterm=NONE ctermbg=203 ctermfg=203 gui=NONE guibg=#ff6060 guifg=#e2e4e5 guisp=#ff6060
    CSAHi SpellRare term=reverse cterm=NONE ctermbg=207 ctermfg=207 gui=NONE guibg=#ff40ff guifg=#e2e4e5 guisp=#ff40ff
    CSAHi SpellLocal term=underline cterm=NONE ctermbg=226 ctermfg=226 gui=NONE guibg=#ffff00 guifg=#e2e4e5 guisp=#ffff00
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=101 ctermfg=101 gui=NONE guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=224 ctermfg=224 gui=NONE guibg=#eee8d5 guifg=#586e75 guisp=#eee8d5
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=59 ctermfg=59 gui=NONE guibg=#384235 guifg=#eee8d5 guisp=#384235
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=102 ctermfg=102 gui=NONE guibg=#91908c guifg=#333325 guisp=#91908c
    CSAHi TabLine term=underline cterm=underline ctermbg=101 ctermfg=101 gui=underline guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi TabLineSel term=bold cterm=bold ctermbg=224 ctermfg=224 gui=bold guibg=#eee8d5 guifg=#2d3f45 guisp=#eee8d5
    CSAHi TabLineFill term=reverse cterm=underline ctermbg=101 ctermfg=101 gui=underline guibg=#87875f guifg=#5c5c5c guisp=#87875f
    CSAHi htmlstring term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=30 gui=NONE guibg=bg guifg=#038c81
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#dc322f
    CSAHi Function term=NONE cterm=bold ctermbg=bg ctermfg=60 gui=bold guibg=bg guifg=#4b718a
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=130 gui=NONE guibg=bg guifg=#b86228
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#2aa198
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=70 gui=NONE guibg=bg guifg=#719e07
    CSAHi DefinedName term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Debug term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#dc322f
    CSAHi Identifier term=underline cterm=bold ctermbg=bg ctermfg=66 gui=bold guibg=bg guifg=#6e828f
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#dc322f
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=70 gui=NONE guibg=bg guifg=#719e07
    CSAHi StorageClass term=NONE cterm=NONE ctermbg=bg ctermfg=136 gui=NONE guibg=bg guifg=#b58900
    CSAHi Todo term=NONE cterm=bold ctermbg=59 ctermfg=59 gui=bold guibg=#537353 guifg=#3f0573 guisp=#537353
    CSAHi Character term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#2aa198
    CSAHi LineNr term=underline cterm=NONE ctermbg=16 ctermfg=16 gui=NONE guibg=#14290d guifg=#586e75 guisp=#14290d
    CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=#ffff00
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=101 gui=bold guibg=bg guifg=#87875f
    CSAHi StatusLine term=bold,reverse cterm=bold ctermbg=101 ctermfg=101 gui=bold guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=101 ctermfg=101 gui=NONE guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=58 ctermfg=58 gui=NONE guibg=#515c2b guifg=#87875f guisp=#515c2b
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#cb4b16
    CSAHi Visual term=reverse cterm=NONE ctermbg=101 ctermfg=101 gui=NONE guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi VisualNOS term=bold,underline cterm=bold ctermbg=22 ctermfg=22 gui=bold guibg=#114007 guifg=#e0e3e0 guisp=#114007
    CSAHi WarningMsg term=NONE cterm=bold ctermbg=bg ctermfg=166 gui=bold guibg=bg guifg=#dc322f
    CSAHi htmltagname term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi doxygenspecial term=NONE cterm=NONE ctermbg=bg ctermfg=222 gui=NONE guibg=bg guifg=#fdd090
    CSAHi mbevisiblechanged term=NONE cterm=NONE ctermbg=60 ctermfg=60 gui=NONE guibg=#4e4e8f guifg=#eeeeee guisp=#4e4e8f
    CSAHi Macro term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=62 gui=underline guibg=bg guifg=#6c71c4
    CSAHi cursorim term=NONE cterm=NONE ctermbg=105 ctermfg=105 gui=NONE guibg=#8b8bff guifg=#404040 guisp=#8b8bff
    CSAHi CTagsImport term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsGlobalVariable term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#dc322f
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=70 gui=NONE guibg=bg guifg=#719e07
    CSAHi LocalVariable term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi doxygenprev term=NONE cterm=NONE ctermbg=bg ctermfg=222 gui=NONE guibg=bg guifg=#fdd090
    CSAHi phpstringsingle term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=22 ctermfg=22 gui=NONE guibg=#234007 guifg=#e2e4e5 guisp=#234007
    CSAHi CursorLine term=underline cterm=underline ctermbg=22 ctermfg=22 gui=underline guibg=#114007 guifg=#e2e4e5 guisp=#114007
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=88 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=101 ctermfg=101 gui=NONE guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi lCursor term=NONE cterm=NONE ctermbg=120 ctermfg=120 gui=NONE guibg=#8fff8b guifg=#404040 guisp=#8fff8b
    CSAHi MatchParen term=reverse cterm=bold ctermbg=22 ctermfg=22 gui=bold guibg=#294025 guifg=#af5f5f guisp=#294025
    CSAHi xmlDocType term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi taglisttagname term=NONE cterm=NONE ctermbg=bg ctermfg=105 gui=NONE guibg=bg guifg=#808bed
    CSAHi doxygenparam term=NONE cterm=NONE ctermbg=bg ctermfg=222 gui=NONE guibg=bg guifg=#fdd090
    CSAHi perlspecialstring term=NONE cterm=NONE ctermbg=238 ctermfg=238 gui=NONE guibg=#404040 guifg=#c080d0 guisp=#404040
    CSAHi EnumerationName term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=131 gui=NONE guibg=bg guifg=#af5f5f
    CSAHi xmlEqual term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=70 gui=NONE guibg=bg guifg=#719e07
    CSAHi perlspecialmatch term=NONE cterm=NONE ctermbg=238 ctermfg=238 gui=NONE guibg=#404040 guifg=#c080d0 guisp=#404040
    CSAHi mbenormal term=NONE cterm=NONE ctermbg=17 ctermfg=17 gui=NONE guibg=#2e2e3f guifg=#cfbfad guisp=#2e2e3f
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=65 gui=italic guibg=bg guifg=#548f54
    CSAHi Error term=reverse cterm=bold ctermbg=101 ctermfg=101 gui=bold guibg=#87875f guifg=#b52a28 guisp=#87875f
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#2aa198
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=22 ctermfg=22 gui=NONE guibg=#154007 guifg=#eee8d5 guisp=#154007
    CSAHi Folded term=NONE cterm=bold ctermbg=22 ctermfg=22 gui=bold guibg=#284021 guifg=#87875f guisp=#284021
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=22 ctermfg=22 gui=NONE guibg=#284021 guifg=#87875f guisp=#284021
    CSAHi DiffAdd term=bold cterm=bold ctermbg=22 ctermfg=22 gui=bold guibg=#2e3609 guifg=#87875f guisp=#2e3609
    CSAHi DiffChange term=bold cterm=bold ctermbg=101 ctermfg=101 gui=bold guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi DiffDelete term=bold cterm=bold ctermbg=22 ctermfg=22 gui=bold guibg=#2e3609 guifg=#af5f5f guisp=#2e3609
    CSAHi DiffText term=reverse cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#2aa198
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=250 gui=NONE guibg=#bebebe guifg=#839496 guisp=#bebebe
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=NONE ctermbg=105 ctermfg=105 gui=NONE guibg=#8080ff guifg=#e2e4e5 guisp=#8080ff
elseif has("gui_running") || &t_Co == 88
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=16 gui=NONE guibg=#14290d guifg=#7e8b8c guisp=#14290d
    CSAHi PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi pythonbuiltin term=NONE cterm=NONE ctermbg=bg ctermfg=83 gui=NONE guibg=bg guifg=#839496
    CSAHi csRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Repeat term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#719e07
    CSAHi CTagsClass term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#2aa198
    CSAHi Label term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#719e07
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#b58900
    CSAHi Union term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi mbevisiblenormal term=NONE cterm=NONE ctermbg=37 ctermfg=37 gui=NONE guibg=#4e4e8f guifg=#cfcfcd guisp=#4e4e8f
    CSAHi user2 term=NONE cterm=NONE ctermbg=17 ctermfg=17 gui=NONE guibg=#3e3e5e guifg=#7070a0 guisp=#3e3e5e
    CSAHi user1 term=NONE cterm=NONE ctermbg=17 ctermfg=17 gui=NONE guibg=#3e3e5e guifg=#00ff8b guisp=#3e3e5e
    CSAHi doxygenspecialonelinedesc term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#ad600b
    CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#b58900
    CSAHi doxygensmallspecial term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#fdd090
    CSAHi Include term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi CTagsMember term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsGlobalConstant term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=16 gui=NONE guibg=bg guifg=#000000
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#2aa198
    CSAHi EnumerationValue term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi doxygenspecialmultilinedesc term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#ad600b
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#b58900
    CSAHi SpecialKey term=bold cterm=bold ctermbg=16 ctermfg=16 gui=bold guibg=#1e4007 guifg=#87875f guisp=#1e4007
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=37 gui=bold guibg=bg guifg=#657b83
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=22 gui=NONE guibg=bg guifg=#268bd2
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#1f2b1f guifg=#af5f5f guisp=#1f2b1f
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi Search term=reverse cterm=NONE ctermbg=37 ctermfg=37 gui=NONE guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=22 gui=NONE guibg=bg guifg=#268bd2
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=37 gui=bold guibg=bg guifg=#87875f
    CSAHi Tag term=NONE cterm=NONE ctermbg=bg ctermfg=48 gui=NONE guibg=bg guifg=#dc322f
    CSAHi javascriptstrings term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi mbechanged term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#2e2e3f guifg=#eeeeee guisp=#2e2e3f
    CSAHi phpstringdouble term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi doxygenbrief term=NONE cterm=NONE ctermbg=bg ctermfg=69 gui=NONE guibg=bg guifg=#fdab60
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#719e07
    CSAHi cformat term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#404040 guifg=#c080d0 guisp=#404040
    CSAHi xmlSyncDT term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi doxygencomment term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#ad7b20
    CSAHi cspecialcharacter term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#404040 guifg=#c080d0 guisp=#404040
    CSAHi SpellCap term=reverse cterm=NONE ctermbg=69 ctermfg=69 gui=NONE guibg=#ff6060 guifg=#e2e4e5 guisp=#ff6060
    CSAHi SpellRare term=reverse cterm=NONE ctermbg=67 ctermfg=67 gui=NONE guibg=#ff40ff guifg=#e2e4e5 guisp=#ff40ff
    CSAHi SpellLocal term=underline cterm=NONE ctermbg=76 ctermfg=76 gui=NONE guibg=#ffff00 guifg=#e2e4e5 guisp=#ffff00
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=37 ctermfg=37 gui=NONE guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=78 ctermfg=78 gui=NONE guibg=#eee8d5 guifg=#586e75 guisp=#eee8d5
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#384235 guifg=#eee8d5 guisp=#384235
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=83 ctermfg=83 gui=NONE guibg=#91908c guifg=#333325 guisp=#91908c
    CSAHi TabLine term=underline cterm=underline ctermbg=37 ctermfg=37 gui=underline guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi TabLineSel term=bold cterm=bold ctermbg=78 ctermfg=78 gui=bold guibg=#eee8d5 guifg=#2d3f45 guisp=#eee8d5
    CSAHi TabLineFill term=reverse cterm=underline ctermbg=37 ctermfg=37 gui=underline guibg=#87875f guifg=#5c5c5c guisp=#87875f
    CSAHi htmlstring term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#038c81
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=48 gui=NONE guibg=bg guifg=#dc322f
    CSAHi Function term=NONE cterm=bold ctermbg=bg ctermfg=37 gui=bold guibg=bg guifg=#4b718a
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#b86228
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#2aa198
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#719e07
    CSAHi DefinedName term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Debug term=NONE cterm=NONE ctermbg=bg ctermfg=48 gui=NONE guibg=bg guifg=#dc322f
    CSAHi Identifier term=underline cterm=bold ctermbg=bg ctermfg=37 gui=bold guibg=bg guifg=#6e828f
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=48 gui=NONE guibg=bg guifg=#dc322f
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#719e07
    CSAHi StorageClass term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#b58900
    CSAHi Todo term=NONE cterm=bold ctermbg=37 ctermfg=37 gui=bold guibg=#537353 guifg=#3f0573 guisp=#537353
    CSAHi Character term=NONE cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#2aa198
    CSAHi LineNr term=underline cterm=NONE ctermbg=16 ctermfg=16 gui=NONE guibg=#14290d guifg=#586e75 guisp=#14290d
    CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=76 gui=bold guibg=bg guifg=#ffff00
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=37 gui=bold guibg=bg guifg=#87875f
    CSAHi StatusLine term=bold,reverse cterm=bold ctermbg=37 ctermfg=37 gui=bold guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=37 ctermfg=37 gui=NONE guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=36 ctermfg=36 gui=NONE guibg=#515c2b guifg=#87875f guisp=#515c2b
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=52 gui=bold guibg=bg guifg=#cb4b16
    CSAHi Visual term=reverse cterm=NONE ctermbg=37 ctermfg=37 gui=NONE guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi VisualNOS term=bold,underline cterm=bold ctermbg=16 ctermfg=16 gui=bold guibg=#114007 guifg=#e0e3e0 guisp=#114007
    CSAHi WarningMsg term=NONE cterm=bold ctermbg=bg ctermfg=48 gui=bold guibg=bg guifg=#dc322f
    CSAHi htmltagname term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi doxygenspecial term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#fdd090
    CSAHi mbevisiblechanged term=NONE cterm=NONE ctermbg=37 ctermfg=37 gui=NONE guibg=#4e4e8f guifg=#eeeeee guisp=#4e4e8f
    CSAHi Macro term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#cb4b16
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=38 gui=underline guibg=bg guifg=#6c71c4
    CSAHi cursorim term=NONE cterm=NONE ctermbg=39 ctermfg=39 gui=NONE guibg=#8b8bff guifg=#404040 guisp=#8b8bff
    CSAHi CTagsImport term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CTagsGlobalVariable term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=48 gui=NONE guibg=bg guifg=#dc322f
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#719e07
    CSAHi LocalVariable term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi doxygenprev term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#fdd090
    CSAHi phpstringsingle term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=16 ctermfg=16 gui=NONE guibg=#234007 guifg=#e2e4e5 guisp=#234007
    CSAHi CursorLine term=underline cterm=underline ctermbg=16 ctermfg=16 gui=underline guibg=#114007 guifg=#e2e4e5 guisp=#114007
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=32 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=37 ctermfg=37 gui=NONE guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi lCursor term=NONE cterm=NONE ctermbg=45 ctermfg=45 gui=NONE guibg=#8fff8b guifg=#404040 guisp=#8fff8b
    CSAHi MatchParen term=reverse cterm=bold ctermbg=80 ctermfg=80 gui=bold guibg=#294025 guifg=#af5f5f guisp=#294025
    CSAHi xmlDocType term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi taglisttagname term=NONE cterm=NONE ctermbg=bg ctermfg=39 gui=NONE guibg=bg guifg=#808bed
    CSAHi doxygenparam term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#fdd090
    CSAHi perlspecialstring term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#404040 guifg=#c080d0 guisp=#404040
    CSAHi EnumerationName term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e2e4e5
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#af5f5f
    CSAHi xmlEqual term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#719e07
    CSAHi perlspecialmatch term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#404040 guifg=#c080d0 guisp=#404040
    CSAHi mbenormal term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#2e2e3f guifg=#cfbfad guisp=#2e2e3f
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=37 gui=italic guibg=bg guifg=#548f54
    CSAHi Error term=reverse cterm=bold ctermbg=37 ctermfg=37 gui=bold guibg=#87875f guifg=#b52a28 guisp=#87875f
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#2aa198
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=16 ctermfg=16 gui=NONE guibg=#154007 guifg=#eee8d5 guisp=#154007
    CSAHi Folded term=NONE cterm=bold ctermbg=80 ctermfg=80 gui=bold guibg=#284021 guifg=#87875f guisp=#284021
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#284021 guifg=#87875f guisp=#284021
    CSAHi DiffAdd term=bold cterm=bold ctermbg=16 ctermfg=16 gui=bold guibg=#2e3609 guifg=#87875f guisp=#2e3609
    CSAHi DiffChange term=bold cterm=bold ctermbg=37 ctermfg=37 gui=bold guibg=#87875f guifg=#14290d guisp=#87875f
    CSAHi DiffDelete term=bold cterm=bold ctermbg=16 ctermfg=16 gui=bold guibg=#2e3609 guifg=#af5f5f guisp=#2e3609
    CSAHi DiffText term=reverse cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#2aa198
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=85 ctermfg=85 gui=NONE guibg=#bebebe guifg=#839496 guisp=#bebebe
    CSAHi Conceal term=NONE cterm=NONE ctermbg=84 ctermfg=86 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=NONE ctermbg=39 ctermfg=39 gui=NONE guibg=#8080ff guifg=#e2e4e5 guisp=#8080ff
endif

if 1
    delcommand CSAHi
endif
