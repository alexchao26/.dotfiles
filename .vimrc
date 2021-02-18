" Remove all existing auto commands
:autocmd!

" suppress W11 errors?
:setl autoread

" On save of **/*.go file, run goimports
:autocmd BufWritePost,FileWritePost **/*.go :silent !goimports -w <afile>
