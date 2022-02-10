# kak-fetch

Like [vim-fetch](https://github.com/wsdjeg/vim-fetch), but for [kakoune](https://kakoune.org).
Understands different schemes used to indicate file, line, column and jumps to the line+column of the file.

### Currently known schemes

#### trailing colon

`$file:lnum[:[colnum[:]]]`

#### trailing parentheses

`$file(lnum[:colnum])`

#### trailing equals

`$file=lnum=`

#### trailing dash

`$file-lnum-`

#### Plan 9 type line spec

`$file[:]#lnum`
