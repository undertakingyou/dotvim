setlocal colorcolumn=79
setlocal foldmethod=indent
setlocal foldlevel=99
setlocal iskeyword=@,48-57,_,192-255
setlocal linebreak
setlocal breakat=\ ^I!@*-+;:,./?\(\[\{

au BufWritePre *.py call TrimEndLines()
