if !has("gui_running") && &t_Co != 88 && &t_Co != 256
    finish
endif

set background=dark

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "mine"

if !exists("g:badwolf_html_link_underline") " {{{
    let g:badwolf_html_link_underline = 1
endif " }}}

if !exists("g:badwolf_css_props_highlight") " {{{
    let g:badwolf_css_props_highlight = 0
endif " }}}
" :s/\v.*x0*([1-9]\d{1,2})_({\S*})\s.*#(\x{6}).*/let s:tc.\2 = ['\3', \1]/g
"let s:tc.plain = ['f8f6f2', 15]

let s:tc = {}
let s:tc.Palette0 = ['131313', 0]
let s:tc.Palette1 = ['cc0000', 1]
let s:tc.Palette2 = ['4e9a06', 2]
let s:tc.Palette3 = ['c4a000', 3]
let s:tc.Palette4 = ['3465a4', 4]
let s:tc.Palette5 = ['75507b', 5]
let s:tc.Palette6 = ['06989a', 6]
let s:tc.Palette7 = ['d3d7cf', 7]
let s:tc.Palette8 = ['555753', 8]
let s:tc.Palette9 = ['ef2929', 9]
let s:tc.Palette10 = ['8ae234', 10]
let s:tc.Palette11 = ['fce94f', 11]
let s:tc.Palette12 = ['729fcf', 12]
let s:tc.Palette13 = ['ad7fa8', 13]
let s:tc.Palette14 = ['34e2e2', 14]
let s:tc.Palette15 = ['eeeeec', 15]
let s:tc.Grey0 = ['000000', 16]
let s:tc.NavyBlue = ['00005f', 17]
let s:tc.DarkBlue = ['000087', 18]
let s:tc.Blue3 = ['0000af', 19]
let s:tc.Blue3 = ['0000d7', 20]
let s:tc.Blue1 = ['0000ff', 21]
let s:tc.DarkGreen = ['005f00', 22]
let s:tc.DeepSkyBlue4 = ['005f5f', 23]
let s:tc.DeepSkyBlue5 = ['005f87', 24]
let s:tc.DeepSkyBlue6 = ['005faf', 25]
let s:tc.DodgerBlue3 = ['005fd7', 26]
let s:tc.DodgerBlue2 = ['005fff', 27]
let s:tc.Green4 = ['008700', 28]
let s:tc.SpringGreen4 = ['00875f', 29]
let s:tc.Turquoise4 = ['008787', 30]
let s:tc.DeepSkyBlue3 = ['0087af', 31]
let s:tc.DeepSkyBlue3 = ['0087d7', 32]
let s:tc.DodgerBlue1 = ['0087ff', 33]
let s:tc.Green3 = ['00af00', 34]
let s:tc.SpringGreen3 = ['00af5f', 35]
let s:tc.DarkCyan = ['00af87', 36]
let s:tc.LightSeaGreen = ['00afaf', 37]
let s:tc.DeepSkyBlue2 = ['00afd7', 38]
let s:tc.DeepSkyBlue1 = ['00afff', 39]
let s:tc.Green3 = ['00d700', 40]
let s:tc.SpringGreen3 = ['00d75f', 41]
let s:tc.SpringGreen2 = ['00d787', 42]
let s:tc.Cyan3 = ['00d7af', 43]
let s:tc.DarkTurquoise = ['00d7d7', 44]
let s:tc.Turquoise2 = ['00d7ff', 45]
let s:tc.Green1 = ['00ff00', 46]
let s:tc.SpringGreen2 = ['00ff5f', 47]
let s:tc.SpringGreen1 = ['00ff87', 48]
let s:tc.MediumSpringGreen = ['00ffaf', 49]
let s:tc.Cyan2 = ['00ffd7', 50]
let s:tc.Cyan1 = ['00ffff', 51]
let s:tc.DarkRed = ['5f0000', 52]
let s:tc.DeepPink4 = ['5f005f', 53]
let s:tc.Purple4 = ['5f0087', 54]
let s:tc.Purple4 = ['5f00af', 55]
let s:tc.Purple3 = ['5f00d7', 56]
let s:tc.BlueViolet = ['5f00ff', 57]
let s:tc.Orange4 = ['5f5f00', 58]
let s:tc.Grey37 = ['5f5f5f', 59]
let s:tc.MediumPurple4 = ['5f5f87', 60]
let s:tc.SlateBlue3 = ['5f5faf', 61]
let s:tc.SlateBlue3 = ['5f5fd7', 62]
let s:tc.RoyalBlue1 = ['5f5fff', 63]
let s:tc.Chartreuse4 = ['5f8700', 64]
let s:tc.DarkSeaGreen4 = ['5f875f', 65]
let s:tc.PaleTurquoise4 = ['5f8787', 66]
let s:tc.SteelBlue = ['5f87af', 67]
let s:tc.SteelBlue3 = ['5f87d7', 68]
let s:tc.CornflowerBlue = ['5f87ff', 69]
let s:tc.Chartreuse3 = ['5faf00', 70]
let s:tc.DarkSeaGreen5 = ['5faf5f', 71]
let s:tc.CadetBlue = ['5faf87', 72]
let s:tc.CadetBlue = ['5fafaf', 73]
let s:tc.SkyBlue3 = ['5fafd7', 74]
let s:tc.SteelBlue1 = ['5fafff', 75]
let s:tc.Chartreuse3 = ['5fd700', 76]
let s:tc.PaleGreen3 = ['5fd75f', 77]
let s:tc.SeaGreen3 = ['5fd787', 78]
let s:tc.Aquamarine3 = ['5fd7af', 79]
let s:tc.MediumTurquoise = ['5fd7d7', 80]
let s:tc.SteelBlue1 = ['5fd7ff', 81]
let s:tc.Chartreuse2 = ['5fff00', 82]
let s:tc.SeaGreen2 = ['5fff5f', 83]
let s:tc.SeaGreen1 = ['5fff87', 84]
let s:tc.SeaGreen1 = ['5fffaf', 85]
let s:tc.Aquamarine1 = ['5fffd7', 86]
let s:tc.DarkSlateGray2 = ['5fffff', 87]
let s:tc.DarkRed = ['870000', 88]
let s:tc.DeepPink4 = ['87005f', 89]
let s:tc.DarkMagenta = ['870087', 90]
let s:tc.DarkMagenta = ['8700af', 91]
let s:tc.DarkViolet = ['8700d7', 92]
let s:tc.Purple = ['8700ff', 93]
let s:tc.Orange4 = ['875f00', 94]
let s:tc.LightPink4 = ['875f5f', 95]
let s:tc.Plum4 = ['875f87', 96]
let s:tc.MediumPurple3 = ['875faf', 97]
let s:tc.MediumPurple3 = ['875fd7', 98]
let s:tc.SlateBlue1 = ['875fff', 99]
let s:tc.Yellow4 = ['878700', 100]
let s:tc.Wheat4 = ['87875f', 101]
let s:tc.Grey53 = ['878787', 102]
let s:tc.LightSlateGrey = ['8787af', 103]
let s:tc.MediumPurple = ['8787d7', 104]
let s:tc.LightSlateBlue = ['8787ff', 105]
let s:tc.Yellow5 = ['87af00', 106]
let s:tc.DarkOliveGreen3 = ['87af5f', 107]
let s:tc.DarkSeaGreen = ['87af87', 108]
let s:tc.LightSkyBlue3 = ['87afaf', 109]
let s:tc.LightSkyBlue3 = ['87afd7', 110]
let s:tc.SkyBlue2 = ['87afff', 111]
let s:tc.Chartreuse2 = ['87d700', 112]
let s:tc.DarkOliveGreen3 = ['87d75f', 113]
let s:tc.PaleGreen3 = ['87d787', 114]
let s:tc.DarkSeaGreen3 = ['87d7af', 115]
let s:tc.DarkSlateGray3 = ['87d7d7', 116]
let s:tc.SkyBlue1 = ['87d7ff', 117]
let s:tc.Chartreuse1 = ['87ff00', 118]
let s:tc.LightGreen = ['87ff5f', 119]
let s:tc.LightGreen = ['87ff87', 120]
let s:tc.PaleGreen1 = ['87ffaf', 121]
let s:tc.Aquamarine2 = ['87ffd7', 122]
let s:tc.DarkSlateGray1 = ['87ffff', 123]
let s:tc.Red3 = ['af0000', 124]
let s:tc.DeepPink4 = ['af005f', 125]
let s:tc.MediumVioletRed = ['af0087', 126]
let s:tc.Magenta3 = ['af00af', 127]
let s:tc.DarkViolet = ['af00d7', 128]
let s:tc.Purple = ['af00ff', 129]
let s:tc.DarkOrange3 = ['af5f00', 130]
let s:tc.IndianRed = ['af5f5f', 131]
let s:tc.HotPink4 = ['af5f87', 132]
let s:tc.MediumOrchid3 = ['af5faf', 133]
let s:tc.MediumOrchid = ['af5fd7', 134]
let s:tc.MediumPurple2 = ['af5fff', 135]
let s:tc.DarkGoldenrod = ['af8700', 136]
let s:tc.LightSalmon3 = ['af875f', 137]
let s:tc.RosyBrown = ['af8787', 138]
let s:tc.Grey63 = ['af87af', 139]
let s:tc.MediumPurple2 = ['af87d7', 140]
let s:tc.MediumPurple1 = ['af87ff', 141]
let s:tc.Gold3 = ['afaf00', 142]
let s:tc.DarkKhaki = ['afaf5f', 143]
let s:tc.NavajoWhite3 = ['afaf87', 144]
let s:tc.Grey69 = ['afafaf', 145]
let s:tc.LightSteelBlue3 = ['afafd7', 146]
let s:tc.LightSteelBlue = ['afafff', 147]
let s:tc.Yellow3 = ['afd700', 148]
let s:tc.DarkOliveGreen3 = ['afd75f', 149]
let s:tc.DarkSeaGreen3 = ['afd787', 150]
let s:tc.DarkSeaGreen2 = ['afd7af', 151]
let s:tc.LightCyan3 = ['afd7d7', 152]
let s:tc.LightSkyBlue1 = ['afd7ff', 153]
let s:tc.GreenYellow = ['afff00', 154]
let s:tc.DarkOliveGreen2 = ['afff5f', 155]
let s:tc.PaleGreen1 = ['afff87', 156]
let s:tc.DarkSeaGreen2 = ['afffaf', 157]
let s:tc.DarkSeaGreen1 = ['afffd7', 158]
let s:tc.PaleTurquoise1 = ['afffff', 159]
let s:tc.Red3 = ['d70000', 160]
let s:tc.DeepPink3 = ['d7005f', 161]
let s:tc.DeepPink3 = ['d70087', 162]
let s:tc.Magenta3 = ['d700af', 163]
let s:tc.Magenta3 = ['d700d7', 164]
let s:tc.Magenta2 = ['d700ff', 165]
let s:tc.DarkOrange4 = ['d75f00', 166]
let s:tc.IndianRed = ['d75f5f', 167]
let s:tc.HotPink3 = ['d75f87', 168]
let s:tc.HotPink2 = ['d75faf', 169]
let s:tc.Orchid = ['d75fd7', 170]
let s:tc.MediumOrchid1 = ['d75fff', 171]
let s:tc.Orange3 = ['d78700', 172]
let s:tc.LightSalmon3 = ['d7875f', 173]
let s:tc.LightPink3 = ['d78787', 174]
let s:tc.Pink3 = ['d787af', 175]
let s:tc.Plum3 = ['d787d7', 176]
let s:tc.Violet = ['d787ff', 177]
let s:tc.Gold3 = ['d7af00', 178]
let s:tc.LightGoldenrod3 = ['d7af5f', 179]
let s:tc.Tan = ['d7af87', 180]
let s:tc.MistyRose3 = ['d7afaf', 181]
let s:tc.Thistle3 = ['d7afd7', 182]
let s:tc.Plum2 = ['d7afff', 183]
let s:tc.Yellow3 = ['d7d700', 184]
let s:tc.Khaki3 = ['d7d75f', 185]
let s:tc.LightGoldenrod2 = ['d7d787', 186]
let s:tc.LightYellow3 = ['d7d7af', 187]
let s:tc.Grey84 = ['d7d7d7', 188]
let s:tc.LightSteelBlue1 = ['d7d7ff', 189]
let s:tc.Yellow2 = ['d7ff00', 190]
let s:tc.DarkOliveGreen1 = ['d7ff5f', 191]
let s:tc.DarkOliveGreen1 = ['d7ff87', 192]
let s:tc.DarkSeaGreen1 = ['d7ffaf', 193]
let s:tc.Honeydew2 = ['d7ffd7', 194]
let s:tc.LightCyan1 = ['d7ffff', 195]
let s:tc.Red1 = ['ff0000', 196]
let s:tc.DeepPink2 = ['ff005f', 197]
let s:tc.DeepPink1 = ['ff0087', 198]
let s:tc.DeepPink1 = ['ff00af', 199]
let s:tc.Magenta2 = ['ff00d7', 200]
let s:tc.Magenta1 = ['ff00ff', 201]
let s:tc.OrangeRed1 = ['ff5f00', 202]
let s:tc.IndianRed1 = ['ff5f5f', 203]
let s:tc.IndianRed1 = ['ff5f87', 204]
let s:tc.HotPink = ['ff5faf', 205]
let s:tc.HotPink = ['ff5fd7', 206]
let s:tc.MediumOrchid1 = ['ff5fff', 207]
let s:tc.DarkOrange = ['ff8700', 208]
let s:tc.Salmon1 = ['ff875f', 209]
let s:tc.LightCoral = ['ff8787', 210]
let s:tc.PaleVioletRed1 = ['ff87af', 211]
let s:tc.Orchid2 = ['ff87d7', 212]
let s:tc.Orchid1 = ['ff87ff', 213]
let s:tc.Orange1 = ['ffaf00', 214]
let s:tc.SandyBrown = ['ffaf5f', 215]
let s:tc.LightSalmon1 = ['ffaf87', 216]
let s:tc.LightPink1 = ['ffafaf', 217]
let s:tc.Pink1 = ['ffafd7', 218]
let s:tc.Plum1 = ['ffafff', 219]
let s:tc.Gold1 = ['ffd700', 220]
let s:tc.LightGoldenrod2 = ['ffd75f', 221]
let s:tc.LightGoldenrod2 = ['ffd787', 222]
let s:tc.NavajoWhite1 = ['ffd7af', 223]
let s:tc.MistyRose1 = ['ffd7d7', 224]
let s:tc.Thistle1 = ['ffd7ff', 225]
let s:tc.Yellow1 = ['ffff00', 226]
let s:tc.LightGoldenrod1 = ['ffff5f', 227]
let s:tc.Khaki1 = ['ffff87', 228]
let s:tc.Wheat1 = ['ffffaf', 229]
let s:tc.Cornsilk1 = ['ffffd7', 230]
let s:tc.Grey100 = ['ffffff', 231]
let s:tc.Grey3 = ['080808', 232]
let s:tc.Grey7 = ['121212', 233]
let s:tc.Grey11 = ['1c1c1c', 234]
let s:tc.Grey15 = ['262626', 235]
let s:tc.Grey19 = ['303030', 236]
let s:tc.Grey23 = ['3a3a3a', 237]
let s:tc.Grey27 = ['444444', 238]
let s:tc.Grey30 = ['4e4e4e', 239]
let s:tc.Grey35 = ['585858', 240]
let s:tc.Grey39 = ['626262', 241]
let s:tc.Grey42 = ['6c6c6c', 242]
let s:tc.Grey46 = ['767676', 243]
let s:tc.Grey50 = ['808080', 244]
let s:tc.Grey54 = ['8a8a8a', 245]
let s:tc.Grey58 = ['949494', 246]
let s:tc.Grey62 = ['9e9e9e', 247]
let s:tc.Grey66 = ['a8a8a8', 248]
let s:tc.Grey70 = ['b2b2b2', 249]
let s:tc.Grey74 = ['bcbcbc', 250]
let s:tc.Grey78 = ['c6c6c6', 251]
let s:tc.Grey82 = ['d0d0d0', 252]
let s:tc.Grey85 = ['dadada', 253]
let s:tc.Grey89 = ['e4e4e4', 254]
let s:tc.Grey93 = ['eeeeee', 255]





" }}}
" Palette {{{
"badwolf colors

" The most basic of all our colors is a slightly tweaked version of the Molokai
" Normal text.
"let s:tc.plain = ['f8f6f2', 15]
let s:tc.plain = ['f8f6f2', 15]

" Pure and simple.
let s:tc.snow = ['ffffff', 15]
let s:tc.coal = ['000000', 16]

" All of the Gravel colors are based on a brown from Clouds Midnight.
let s:tc.brightgravel   = ['d9cec3', 252]
let s:tc.lightgravel    = ['998f84', 245]
let s:tc.gravel         = ['857f78', 243]
let s:tc.mediumgravel   = ['666462', 241]
let s:tc.deepgravel     = ['45413b', 238]
let s:tc.deepergravel   = ['35322d', 236]
let s:tc.darkgravel     = ['242321', 235]
let s:tc.blackgravel    = ['1c1b1a', 233]
let s:tc.blackestgravel = ['141413', 232]
let s:tc.toffee = ['b88853', 137]
let s:tc.coffee    = ['c7915b', 173]
let s:tc.darkroast = ['88633f', 95]

" A color sampled from a highlight in a photo of a glass of Dale's Pale Ale on
" my desk.
let s:tc.dalespale = ['fade3e', 221]

" A beautiful tan from Tomorrow Night.
let s:tc.dirtyblonde = ['f4cf86', 222]

" Delicious, chewy red from Made of Code for the poppiest highlights.
let s:tc.taffy = ['ff2c4b', 196]

" Another chewy accent, but use sparingly!
let s:tc.saltwatertaffy = ['8cffba', 121]

" The star of the show comes straight from Made of Code.
let s:tc.tardis = ['0a9dff', 39]

" This one's from Mustang, not Florida!
let s:tc.orange = ['ffa724', 214]

" A limier green from Getafe.
let s:tc.lime = ['aeee00', 154]

" Rose's dress in The Idiot's Lantern.
let s:tc.dress = ['ff9eb8', 211]



"colorfulltext
"let s:cft = {}
"let s:cft.violet = ['9656E5', 

" }}}
" Highlighting Function {{{
function! s:HL(group, fg, ...)
    " Arguments: group, guifg, guibg, gui, guisp

    let histring = 'hi ' . a:group . ' '

    if strlen(a:fg)
        if a:fg == 'fg'
            let histring .= 'guifg=fg ctermfg=fg '
        else
            let c = get(s:tc, a:fg)
            let histring .= 'guifg=#' . c[0] . ' ctermfg=' . c[1] . ' '
        endif
    endif

    if a:0 >= 1 && strlen(a:1)
        if a:1 == 'bg'
            let histring .= 'guibg=bg ctermbg=bg '
        else
            let c = get(s:tc, a:1)
            let histring .= 'guibg=#' . c[0] . ' ctermbg=' . c[1] . ' '
        endif
    endif

    if a:0 >= 2 && strlen(a:2)
        let histring .= 'gui=' . a:2 . ' cterm=' . a:2 . ' '
    endif

    if a:0 >= 3 && strlen(a:3)
        let c = get(s:tc, a:3)
        let histring .= 'guisp=#' . c[0] . ' '
    endif

    "echom histring

    execute histring
endfunction
" }}}
" Configuration Options {{{

if exists('g:badwolf_darkgutter') && g:badwolf_darkgutter
    let s:gutter = 'blackestgravel'
else
    let s:gutter = 'blackgravel'
endif

if exists('g:badwolf_tabline')
    if g:badwolf_tabline == 0
        let s:tabline = 'blackestgravel'
    elseif  g:badwolf_tabline == 1
        let s:tabline = 'blackgravel'
    elseif  g:badwolf_tabline == 2
        let s:tabline = 'darkgravel'
    elseif  g:badwolf_tabline == 3
        let s:tabline = 'deepgravel'
    else
        let s:tabline = 'blackestgravel'
    endif
else
    let s:tabline = 'blackgravel'
endif

" }}}

" Actual colorscheme ----------------------------------------------------------
" Vanilla Vim {{{

" General/UI {{{

call s:HL('Normal', 'plain', 'blackestgravel')

call s:HL('Folded', 'lightgravel', 'Grey0', 'none')

call s:HL('VertSplit', 'lightgravel', 'blackestgravel', 'none')

set cursorline
set cursorcolumn
call s:HL('CursorLine',   '', 'Grey0', 'none')
call s:HL('CursorColumn', '', 'blackestgravel')
call s:HL('ColorColumn',  '', 'blackestgravel')
"
call s:HL('TabLine', 'plain', s:tabline, 'none')
call s:HL('TabLineFill', 'plain', s:tabline, 'none')
call s:HL('TabLineSel', 'coal', 'tardis', 'none')

call s:HL('MatchParen', 'Aquamarine2', 'Palette0', 'bold')
"
call s:HL('NonText',    'deepgravel', 'bg')
"call s:HL('SpecialKey', 'deepgravel', 'bg')
"
call s:HL('Visual',    '',  'Grey0')
call s:HL('VisualNOS', '',  'Grey0')
"
"call s:HL('Search',    'coal', 'dalespale', 'bold')
"call s:HL('IncSearch', 'coal', 'tardis',    'bold')
"
"call s:HL('Underlined', 'fg', '', 'underline')
"
call s:HL('StatusLine',   'Palette15', 'Grey0', 'bold')
"call s:HL('StatusLineNC', 'snow', 'deepgravel', 'bold')
"
"call s:HL('Directory', 'dirtyblonde', '', 'bold')
"
"call s:HL('Title', 'lime')
"
"call s:HL('ErrorMsg',   'Palette1',       'bg', 'bold')
"call s:HL('MoreMsg',    'dalespale',   '',   'bold')
"call s:HL('ModeMsg',    'dirtyblonde', '',   'bold')
"call s:HL('Question',   'dirtyblonde', '',   'bold')
call s:HL('WarningMsg', 'DarkOrange4',       'bg',   'bold')
"
"" This is a ctags tag, not an HTML one.  'Something you can use c-] on'.
"call s:HL('Tag', '', '', 'bold')
"
"" hi IndentGuides                  guibg=#373737
"" hi WildMenu        guifg=#66D9EF guibg=#000000
"
"" }}}
"" Gutter {{{
"
call s:HL('LineNr',     'Palette8', 'bg')
"call s:HL('SignColumn', '',             s:gutter)
"call s:HL('FoldColumn', 'mediumgravel', s:gutter)
"
"" }}}
"" Cursor {{{
"
"call s:HL('Cursor',  'coal', 'lime', 'bold')
"call s:HL('vCursor', 'coal', 'tardis', 'bold')
"call s:HL('iCursor', 'coal', 'tardis', 'none')
"
"" }}}
"" Syntax highlighting {{{
"
"" Start with a simple base.
call s:HL('Special', 'Palette7')
"
"" Comments are slightly brighter than folds, to make 'headers' easier to see.
call s:HL('Comment', 'DarkSeaGreen4')
call s:HL('Todo',   'Palette2', 'bg', 'bold')
"call s:HL('SpecialComment', 'snow', 'bg', 'bold')
"
"" Strings are a nice, pale straw color.  Nothing too fancy.
call s:HL('String', 'Salmon1')
"
"" Control flow stuff is taffy.
call s:HL('Statement',   'Palette4', '', 'bold')
call s:HL('Keyword',     'HotPink4', '', 'bold')
call s:HL('Conditional', 'Palette12', '', 'bold')
call s:HL('Operator',    'Palette3', '', 'none')
call s:HL('Label',       'taffy', '', 'none')
call s:HL('Repeat',      'Salmon1', '', 'none')
"
"" Functions and variable declarations are orange, because plain looks weird.
call s:HL('Identifier', 'Palette6', '', 'none')
call s:HL('Function',   'Palette6', '', 'none')
"
"" Preprocessor stuff is lime, to make it pop.
""
"" This includes imports in any given language, because they should usually be
"" grouped together at the beginning of a file.  If they're in the middle of some
"" other code they should stand out, because something tricky is
"" probably going on.
"call s:HL('PreProc',   'lime', '', 'none')
"call s:HL('Macro',     'lime', '', 'none')
call s:HL('Define',    'Palette9', '', 'bold')
"call s:HL('PreCondit', 'lime', '', 'bold')
"
"" Constants of all kinds are colored together.
"" I'm not really happy with the color yet...
call s:HL('Constant',  'Salmon1', '', 'bold')
call s:HL('Character', 'Salmon1', '', 'bold')
call s:HL('Boolean',   'Salmon1', '', 'bold')
"
call s:HL('Number', 'Salmon1', '', 'bold')
call s:HL('Float',  'Salmon1', '', 'bold')
"
"" Not sure what 'special character in a constant' means, but let's make it pop.
"call s:HL('SpecialChar', 'dress', '', 'bold')
"
"call s:HL('Type', 'dress', '', 'none')
"call s:HL('StorageClass', 'taffy', '', 'none')
"call s:HL('Structure', 'taffy', '', 'none')
"call s:HL('Typedef', 'taffy', '', 'bold')
"
"" Make try/catch blocks stand out.
"call s:HL('Exception', 'lime', '', 'bold')
"
"" Misc
"call s:HL('Error',  'snow',   'taffy', 'bold')
"call s:HL('Debug',  'snow',   '',      'bold')
"call s:HL('Ignore', 'gravel', '',      '')
"
"" }}}
"" Completion Menu {{{
"
"call s:HL('Pmenu', 'plain', 'deepergravel')
"call s:HL('PmenuSel', 'coal', 'tardis', 'bold')
"call s:HL('PmenuSbar', '', 'deepergravel')
"call s:HL('PmenuThumb', 'brightgravel')
"
"" }}}
"" Diffs {{{
"
"call s:HL('DiffDelete', 'coal', 'coal')
"call s:HL('DiffAdd',    '',     'deepergravel')
"call s:HL('DiffChange', '',     'darkgravel')
"call s:HL('DiffText',   'snow', 'deepergravel', 'bold')
"
"" }}}
"" Spelling {{{
"
"if has("spell")
"    call s:HL('SpellCap', 'dalespale', 'bg', 'undercurl,bold', 'dalespale')
"    call s:HL('SpellBad', '', 'bg', 'undercurl', 'dalespale')
"    call s:HL('SpellLocal', '', '', 'undercurl', 'dalespale')
"    call s:HL('SpellRare', '', '', 'undercurl', 'dalespale')
"endif
"
"" }}}
"
"" }}}
"" Plugins {{{
"
"" CtrlP {{{
"
"    " the message when no match is found
"    call s:HL('CtrlPNoEntries', 'snow', 'taffy', 'bold')
"
"    " the matched pattern
"    call s:HL('CtrlPMatch', 'orange', 'bg', 'none')
"
"    " the line prefix '>' in the match window
"    call s:HL('CtrlPLinePre', 'deepgravel', 'bg', 'none')
"
"    " the prompt’s base
"    call s:HL('CtrlPPrtBase', 'deepgravel', 'bg', 'none')
"
"    " the prompt’s text
"    call s:HL('CtrlPPrtText', 'plain', 'bg', 'none')
"
"    " the prompt’s cursor when moving over the text
"    call s:HL('CtrlPPrtCursor', 'coal', 'tardis', 'bold')
"
"    " 'prt' or 'win', also for 'regex'
"    call s:HL('CtrlPMode1', 'coal', 'tardis', 'bold')
"
"    " 'file' or 'path', also for the local working dir
"    call s:HL('CtrlPMode2', 'coal', 'tardis', 'bold')
"
"    " the scanning status
"    call s:HL('CtrlPStats', 'coal', 'tardis', 'bold')
"
"    " TODO: CtrlP extensions.
"    " CtrlPTabExtra  : the part of each line that’s not matched against (Comment)
"    " CtrlPqfLineCol : the line and column numbers in quickfix mode (|s:HL-Search|)
"    " CtrlPUndoT     : the elapsed time in undo mode (|s:HL-Directory|)
"    " CtrlPUndoBr    : the square brackets [] in undo mode (Comment)
"    " CtrlPUndoNr    : the undo number inside [] in undo mode (String)
"
"" }}}
"" EasyMotion {{{
"
"call s:HL('EasyMotionTarget', 'tardis',     'bg', 'bold')
"call s:HL('EasyMotionShade',  'deepgravel', 'bg')
"
"" }}}
"" Interesting Words {{{
"
"" These are only used if you're me or have copied the <leader>hNUM mappings
"" from my Vimrc.
"call s:HL('InterestingWord1', 'coal', 'orange')
"call s:HL('InterestingWord2', 'coal', 'lime')
"call s:HL('InterestingWord3', 'coal', 'saltwatertaffy')
"call s:HL('InterestingWord4', 'coal', 'toffee')
"call s:HL('InterestingWord5', 'coal', 'dress')
"call s:HL('InterestingWord6', 'coal', 'taffy')
"
"
"" }}}
"" Makegreen {{{
"
"" hi GreenBar term=reverse ctermfg=white ctermbg=green guifg=coal guibg=#9edf1c
"" hi RedBar   term=reverse ctermfg=white ctermbg=red guifg=white guibg=#C50048
"
"" }}}
"" Rainbow Parentheses {{{
"
"call s:HL('level16c', 'mediumgravel',   '', 'bold')
"call s:HL('level15c', 'dalespale',      '', '')
"call s:HL('level14c', 'dress',          '', '')
"call s:HL('level13c', 'orange',         '', '')
"call s:HL('level12c', 'tardis',         '', '')
"call s:HL('level11c', 'lime',           '', '')
"call s:HL('level10c', 'toffee',         '', '')
"call s:HL('level9c',  'saltwatertaffy', '', '')
"call s:HL('level8c',  'coffee',         '', '')
"call s:HL('level7c',  'dalespale',      '', '')
"call s:HL('level6c',  'dress',          '', '')
"call s:HL('level5c',  'orange',         '', '')
"call s:HL('level4c',  'tardis',         '', '')
"call s:HL('level3c',  'lime',           '', '')
"call s:HL('level2c',  'toffee',         '', '')
"call s:HL('level1c',  'saltwatertaffy', '', '')
"
"" }}}
"" ShowMarks {{{
"
"call s:HL('ShowMarksHLl', 'tardis', 'blackgravel')
"call s:HL('ShowMarksHLu', 'tardis', 'blackgravel')
"call s:HL('ShowMarksHLo', 'tardis', 'blackgravel')
"call s:HL('ShowMarksHLm', 'tardis', 'blackgravel')
"
"" }}}
"
"" }}}
"" Filetype-specific {{{
"
"" Clojure {{{
"
"call s:HL('clojureSpecial',  'taffy', '', '')
"call s:HL('clojureDefn',     'taffy', '', '')
"call s:HL('clojureDefMacro', 'taffy', '', '')
"call s:HL('clojureDefine',   'taffy', '', '')
"call s:HL('clojureMacro',    'taffy', '', '')
"call s:HL('clojureCond',     'taffy', '', '')
"
"call s:HL('clojureKeyword', 'orange', '', 'none')
"
"call s:HL('clojureFunc',   'dress', '', 'none')
"call s:HL('clojureRepeat', 'dress', '', 'none')
"
"call s:HL('clojureParen0', 'lightgravel', '', 'none')
"
"call s:HL('clojureAnonArg', 'snow', '', 'bold')
"
"" }}}
"" CSS {{{
"
"if g:badwolf_css_props_highlight
"    call s:HL('cssColorProp', 'dirtyblonde', '', 'none')
"    call s:HL('cssBoxProp', 'dirtyblonde', '', 'none')
"    call s:HL('cssTextProp', 'dirtyblonde', '', 'none')
"    call s:HL('cssRenderProp', 'dirtyblonde', '', 'none')
"    call s:HL('cssGeneratedContentProp', 'dirtyblonde', '', 'none')
"else
"    call s:HL('cssColorProp', 'fg', '', 'none')
"    call s:HL('cssBoxProp', 'fg', '', 'none')
"    call s:HL('cssTextProp', 'fg', '', 'none')
"    call s:HL('cssRenderProp', 'fg', '', 'none')
"    call s:HL('cssGeneratedContentProp', 'fg', '', 'none')
"end
"
"call s:HL('cssValueLength', 'toffee', '', 'bold')
"call s:HL('cssColor', 'toffee', '', 'bold')
"call s:HL('cssBraces', 'lightgravel', '', 'none')
"call s:HL('cssIdentifier', 'orange', '', 'bold')
"call s:HL('cssClassName', 'orange', '', 'none')
"
"" }}}
"" Diff {{{
"
"call s:HL('gitDiff', 'lightgravel', '',)
"
"call s:HL('diffRemoved', 'dress', '',)
"call s:HL('diffAdded', 'lime', '',)
"call s:HL('diffFile', 'coal', 'taffy', 'bold')
"call s:HL('diffNewFile', 'coal', 'taffy', 'bold')
"
"call s:HL('diffLine', 'coal', 'orange', 'bold')
"call s:HL('diffSubname', 'orange', '', 'none')
"
"" }}}
"" Django Templates {{{
"
"call s:HL('djangoArgument', 'dirtyblonde', '',)
"call s:HL('djangoTagBlock', 'orange', '')
"call s:HL('djangoVarBlock', 'orange', '')
"" hi djangoStatement guifg=#ff3853 gui=bold
"" hi djangoVarBlock guifg=#f4cf86
"
"" }}}
"" HTML {{{
"
"" Punctuation
"call s:HL('htmlTag',    'darkroast', 'bg', 'none')
"call s:HL('htmlEndTag', 'darkroast', 'bg', 'none')
"
"" Tag names
"call s:HL('htmlTagName',        'coffee', '', 'bold')
"call s:HL('htmlSpecialTagName', 'coffee', '', 'bold')
"call s:HL('htmlSpecialChar',    'lime',   '', 'none')
"
"" Attributes
"call s:HL('htmlArg', 'coffee', '', 'none')
"
"" Stuff inside an <a> tag
"
"if g:badwolf_html_link_underline
"    call s:HL('htmlLink', 'lightgravel', '', 'underline')
"else
"    call s:HL('htmlLink', 'lightgravel', '', 'none')
"endif
"
"" }}}
"" Java {{{
"
"call s:HL('javaClassDecl', 'taffy', '', 'bold')
"call s:HL('javaScopeDecl', 'taffy', '', 'bold')
"call s:HL('javaCommentTitle', 'gravel', '')
"call s:HL('javaDocTags', 'snow', '', 'none')
"call s:HL('javaDocParam', 'dalespale', '', '')
"
"" }}}
"" LaTeX {{{
"
"call s:HL('texStatement', 'tardis', '', 'none')
"call s:HL('texMathZoneX', 'orange', '', 'none')
"call s:HL('texMathZoneA', 'orange', '', 'none')
"call s:HL('texMathZoneB', 'orange', '', 'none')
"call s:HL('texMathZoneC', 'orange', '', 'none')
"call s:HL('texMathZoneD', 'orange', '', 'none')
"call s:HL('texMathZoneE', 'orange', '', 'none')
"call s:HL('texMathZoneV', 'orange', '', 'none')
"call s:HL('texMathZoneX', 'orange', '', 'none')
"call s:HL('texMath', 'orange', '', 'none')
"call s:HL('texMathMatcher', 'orange', '', 'none')
"call s:HL('texRefLabel', 'dirtyblonde', '', 'none')
"call s:HL('texRefZone', 'lime', '', 'none')
"call s:HL('texComment', 'darkroast', '', 'none')
"call s:HL('texDelimiter', 'orange', '', 'none')
"call s:HL('texZone', 'brightgravel', '', 'none')
"
"augroup badwolf_tex
"    au!
"
"    au BufRead,BufNewFile *.tex syn region texMathZoneV start="\\(" end="\\)\|%stopzone\>" keepend contains=@texMathZoneGroup
"    au BufRead,BufNewFile *.tex syn region texMathZoneX start="\$" skip="\\\\\|\\\$" end="\$\|%stopzone\>" keepend contains=@texMathZoneGroup
"augroup END
"
"" }}}
"" LessCSS {{{
"
"call s:HL('lessVariable', 'lime', '', 'none')
"
"" }}}
"" Lispyscript {{{
"
"call s:HL('lispyscriptDefMacro', 'lime', '', '')
"call s:HL('lispyscriptRepeat', 'dress', '', 'none')
"
"" }}}
"" Mail {{{
"
"call s:HL('mailSubject', 'orange', '', 'bold')
"call s:HL('mailHeader', 'lightgravel', '', '')
"call s:HL('mailHeaderKey', 'lightgravel', '', '')
"call s:HL('mailHeaderEmail', 'snow', '', '')
"call s:HL('mailURL', 'toffee', '', 'underline')
"call s:HL('mailSignature', 'gravel', '', 'none')
"
"call s:HL('mailQuoted1', 'gravel', '', 'none')
"call s:HL('mailQuoted2', 'dress', '', 'none')
"call s:HL('mailQuoted3', 'dirtyblonde', '', 'none')
"call s:HL('mailQuoted4', 'orange', '', 'none')
"call s:HL('mailQuoted5', 'lime', '', 'none')
"
"" }}}
"" Markdown {{{
"
"call s:HL('markdownHeadingRule', 'lightgravel', '', 'bold')
"call s:HL('markdownHeadingDelimiter', 'lightgravel', '', 'bold')
"call s:HL('markdownOrderedListMarker', 'lightgravel', '', 'bold')
"call s:HL('markdownListMarker', 'lightgravel', '', 'bold')
"call s:HL('markdownItalic', 'snow', '', 'bold')
"call s:HL('markdownBold', 'snow', '', 'bold')
"call s:HL('markdownH1', 'orange', '', 'bold')
"call s:HL('markdownH2', 'lime', '', 'bold')
"call s:HL('markdownH3', 'lime', '', 'none')
"call s:HL('markdownH4', 'lime', '', 'none')
"call s:HL('markdownH5', 'lime', '', 'none')
"call s:HL('markdownH6', 'lime', '', 'none')
"call s:HL('markdownLinkText', 'toffee', '', 'underline')
"call s:HL('markdownIdDeclaration', 'toffee')
"call s:HL('markdownAutomaticLink', 'toffee', '', 'bold')
"call s:HL('markdownUrl', 'toffee', '', 'bold')
"call s:HL('markdownUrldelimiter', 'lightgravel', '', 'bold')
"call s:HL('markdownLinkDelimiter', 'lightgravel', '', 'bold')
"call s:HL('markdownLinkTextDelimiter', 'lightgravel', '', 'bold')
"call s:HL('markdownCodeDelimiter', 'dirtyblonde', '', 'bold')
"call s:HL('markdownCode', 'dirtyblonde', '', 'none')
"call s:HL('markdownCodeBlock', 'dirtyblonde', '', 'none')
"
"" }}}
"" MySQL {{{
"
"call s:HL('mysqlSpecial', 'dress', '', 'bold')
"
"" }}}
"" Python {{{
"
"hi def link pythonOperator Operator
"call s:HL('pythonBuiltin',     'dress')
"call s:HL('pythonBuiltinObj',  'dress')
"call s:HL('pythonBuiltinFunc', 'dress')
"call s:HL('pythonEscape',      'dress')
"call s:HL('pythonException',   'lime', '', 'bold')
"call s:HL('pythonExceptions',  'lime', '', 'none')
"call s:HL('pythonPrecondit',   'lime', '', 'none')
"call s:HL('pythonDecorator',   'taffy', '', 'none')
"call s:HL('pythonRun',         'gravel', '', 'bold')
"call s:HL('pythonCoding',      'gravel', '', 'bold')
"
"" }}}
"" SLIMV {{{
"
"" Rainbow parentheses
"call s:HL('hlLevel0', 'gravel')
"call s:HL('hlLevel1', 'orange')
"call s:HL('hlLevel2', 'saltwatertaffy')
"call s:HL('hlLevel3', 'dress')
"call s:HL('hlLevel4', 'coffee')
"call s:HL('hlLevel5', 'dirtyblonde')
"call s:HL('hlLevel6', 'orange')
"call s:HL('hlLevel7', 'saltwatertaffy')
"call s:HL('hlLevel8', 'dress')
"call s:HL('hlLevel9', 'coffee')
"
"" }}}
"" Vim {{{
"
"call s:HL('VimCommentTitle', 'lightgravel', '', 'bold')
"
"call s:HL('VimMapMod',    'dress', '', 'none')
"call s:HL('VimMapModKey', 'dress', '', 'none')
"call s:HL('VimNotation', 'dress', '', 'none')
"call s:HL('VimBracket', 'dress', '', 'none')
"
"" }}}
"
"" }}}
"
