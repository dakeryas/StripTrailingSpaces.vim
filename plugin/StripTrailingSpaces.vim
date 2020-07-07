 function! s:StripTrailingSpaces()
     let l = line(".")
     let c = col(".")
     %s/\s\+$//e
     call cursor(l, c)
 endfun

 let s:default_extensions = ['*.vim','*.h','*.c','*cc','*.cxx','*.hh','*.cpp','*.hpp','*.tex','*.sty','CMakeLists.txt','*akefile*','*.py','*.awk','*.sh','*.csh','*.zsh','*.f90','*.yml','*.md','*.cue']
 let g:strip_extensions = get(g:, 'strip_extensions', s:default_extensions)
 execute "autocmd BufWritePre " . join(g:strip_extensions, ",") . " call s:StripTrailingSpaces()"
