 function! s:StripTrailingSpaces()
     let l = line(".")
     let c = col(".")
     %s/\s\+$//e
     call cursor(l, c)
 endfun

 let s:default_extensions = ['*.vim','*.h','*.c','*cc','*.cxx','*.hh','*.cpp','*.hpp','*.tex','*.sty','control', 'CMakeLists.txt','*akefile*','*.py','*.rb','*.awk','*.sh','*.csh','*.zsh','*.f90','*.cfg','*.yaml','*.yml','*.md','*.cue']
 let g:strip_extensions = get(g:, 'strip_extensions', s:default_extensions)
 execute "autocmd BufWritePre " . join(g:strip_extensions, ",") . " call s:StripTrailingSpaces()"
