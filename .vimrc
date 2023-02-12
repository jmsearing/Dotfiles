"Set line numbers to relative
set relativenumber

"Disable compatibility to bring vim to the current millenium 
set nocompatible

"Set syntax highlighting
syntax on

"Set cursor hightlighting
set cursorline
set cursorcolumn

"Pythonify teh tabs
set tabstop=4
set expandtab

"Search down into subfolders
" Profixes tab-completion for all file-related tasks
set path+=**

"Display all matching files when we tab complete
set wildmenu

"Make tags
command! MakeTags !ctags -R .

"Autocomplete
"^n brings up the list, again to move forward
"^p to go backwards
"^x^n to search only this file
"^x^f to seach for a file/folder name

"Autotab
:set autoindent
