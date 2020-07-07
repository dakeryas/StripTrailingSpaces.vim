
## Description
Strip trailing spaces of a buffer upon writing.

By default, many file extensions are active for this plugin. The list is below:
```
 *.vim
*.h
*.c
*cc
*.cxx
*.hh
*.cpp
*.hpp
*.tex
*.sty
CMakeLists.txt
*akefile*
*.py
*.awk
*.sh
*.csh
*.zsh
*.f90
*.yml
*.md
*.cue
```

These values may be overriden from your `.vimrc` e.g.
```
 let g:strip_extensions = ['*.c', '*.h']
```

## Installation

Using Vim8's built-in package manager, from `~.vim` do:

```
~/.vim/pack/vendor/start/$ git clone https://github.com/dakeryas/StripTrailingWhitespaces.vim.git
```
Or simple as a submodule if your `.vim` folder is under version control:

```
~/.vim/pack/vendor/start/$ git submodule add https://github.com/dakeryas/StripTrailingWhitespaces.vim.git
```
