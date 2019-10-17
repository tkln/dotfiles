" Vim color file
" Maintainer:	Shian Lee 
" Last Change:	2014 Mar 6 (for vim 7.4)
" Remark:	"industry" stands for 'industrial' color scheme. In industrial
"		HMI (Human-Machine-Interface) programming, using a standard color
"               scheme is mandatory in many cases (in traffic-lights for example): 
"               LIGHT_RED is	    'Warning' 
"               LIGHT_YELLOW is	    'Attention' 
"               LIGHT_GREEN is	    'Normal' 
"               LIGHT_MAGENTA is    'Warning-Attention' (light RED-YELLOW)
"               LIGHT_CYAN is	    'Attention-Normal'  (light YELLOW-GREEN).
"               BLACK is	    Dark-High-Contrast Background for maximum safety.
"               BLUE is		    Shade of BLACK (not supposed to get attention).
"
"               Industrial color scheme is by nature clear, safe and productive. 
"               Yet, depends on the file type's syntax, it might appear incorrect. 

" Reset to dark background, then reset everything to defaults:
set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "minimal"

" First set Normal to regular white on black text colors:
" hi Normal ctermfg=white ctermbg=Black guifg=#dddddd	guibg=Black
hi Normal cterm=NONE ctermfg=15

hi VertSplit ctermfg=darkgray
hi StatusLine ctermfg=lightgray ctermbg=black
hi StatusLineNC ctermfg=darkgray

" Syntax highlighting (other color-groups using default, see :help group-name):
hi Comment    cterm=NONE ctermfg=7    	gui=NONE guifg=#00aaaa   	 
hi Constant   cterm=NONE ctermfg=94   	gui=NONE guifg=#00ffff   	
hi Function   cterm=NONE ctermfg=8   	gui=NONE guifg=#00ff00   	
hi Statement  cterm=NONE ctermfg=8	     	gui=NONE guifg=#ffffff	     	
hi PreProc    cterm=NONE ctermfg=DarkGreen	gui=bold guifg=#ffff00 	
hi Type	      cterm=NONE ctermfg=lightgray	gui=NONE guifg=#00ff00 		
hi Special    cterm=NONE ctermfg=8    	gui=NONE guifg=#ff0000    	
hi Delimiter  cterm=NONE ctermfg=Yellow    	gui=NONE guifg=#ffff00    	

