let g:vimtex_compiler_progname = 'nvr'

filetype plugin indent on

syntax enable

" set output directory to build
let g:vimtex_compiler_latexmk = {
            \ 'build_dir' : 'build',
            \}

let g:vimtex_view_method = 'zathura'

let maplocalleader = ","
