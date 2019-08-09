"===========================================================================
" dbext.vim callback function
"  a) Colour the header row for each table in the result set
"  Note: This script uses Align.vim plugin
"        <www.vim.org/scripts/script.php?script_id=294>
"        to do the column formatting and assumes that '|' character is
"        the column separator
"===========================================================================
function! DBextPostResult(db_type, buf_nr)
  " Highlight the column names in the result table's header row
  " Define colour scheme. (Or you can use an existing name like 'Comment' etc.)
  hi TableHead guifg=#F4DDBD guibg=#469DD1 gui=bold ctermfg=NONE ctermbg=red cterm=NONE
  " 1. Find the header row and the borders above and below it
  syn match tableHead /+-.*+\n|.*\n+-.*\n|/he=e-1 contains=headText,divRow
  " 2. Find the column names to colour
  syn match headText /[^|]\+/ contained
  " 3. Exclude the border rows above and below
  syn match divRow /^+-.*/ contained
  " 4. Set the text colouring for the column headers
  hi link headText TableHead

  " Clear highlighting for previously matched characters
  let @/ = ""
endfunction
