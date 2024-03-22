augroup RestoreCursorShapeOnExit
    autocmd!
    autocmd VimLeave * set guicursor=a:ver20,a:blinkwait700-blinkoff400-blinkon250
augroup END

set expandtab ts=4 sw=4 ai
set mouse=a
