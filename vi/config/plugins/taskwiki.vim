let g:taskwiki_suppress_mappings="yes"

" Local leader. Mnemonic tip: 'k' is used in 'tasK' and 'wiKi'
nnoremap <silent><buffer> <C-k>a :TaskWikiAnnotate<CR>
nnoremap <silent><buffer> <C-k>bd :TaskWikiBurndownDaily<CR>
nnoremap <silent><buffer> <C-k>bw :TaskWikiBurndownWeekly<CR>
nnoremap <silent><buffer> <C-k>bm :TaskWikiBurndownMonthly<CR>
nnoremap <silent><buffer> <C-k>cp :TaskWikiChooseProject<CR>
nnoremap <silent><buffer> <C-k>ct :TaskWikiChooseTag<CR>
nnoremap <silent><buffer> <C-k>C :TaskWikiCalendar<CR>
nnoremap <silent><buffer> <C-k>d :TaskWikiDone<CR>
nnoremap <silent><buffer> <C-k>D :TaskWikiDelete<CR>
nnoremap <silent><buffer> <C-k>e :TaskWikiEdit<CR>
nnoremap <silent><buffer> <C-k>g :TaskWikiGrid<CR>
nnoremap <silent><buffer> <C-k>Gm :TaskWikiGhistoryMonthly<CR>
nnoremap <silent><buffer> <C-k>Ga :TaskWikiGhistoryAnnual<CR>
nnoremap <silent><buffer> <C-k>hm :TaskWikiHistoryMonthly<CR>
nnoremap <silent><buffer> <C-k>ha :TaskWikiHistoryAnnual<CR>
nnoremap <silent><buffer> <C-k>i :TaskWikiInfo<CR>
nnoremap <silent><buffer> <C-k>l :TaskWikiLink<CR>
nnoremap <silent><buffer> <C-k>m :TaskWikiMod<CR>
nnoremap <silent><buffer> <C-k>P :TaskWikiProjects<CR>
nnoremap <silent><buffer> <C-k>Ps :TaskWikiProjectsSummary<CR>
nnoremap <silent><buffer> <C-k>S :TaskWikiStats<CR>
nnoremap <silent><buffer> <C-k>t :TaskWikiTags<CR>
nnoremap <silent><buffer> <C-k>. :TaskWikiRedo<CR>
nnoremap <silent><buffer> <C-k>s :TaskWikiStart<CR>
nnoremap <silent><buffer> <C-k>S :TaskWikiStop<CR>

" Mappings for visual mode.
vnoremap <silent><buffer> <C-k>a :TaskWikiAnnotate<CR>
vnoremap <silent><buffer> <C-k>cp :TaskWikiChooseProject<CR>
vnoremap <silent><buffer> <C-k>ct :TaskWikiChooseTag<CR>
vnoremap <silent><buffer> <C-k>d :TaskWikiDone<CR>
vnoremap <silent><buffer> <C-k>D :TaskWikiDelete<CR>
vnoremap <silent><buffer> <C-k>e :TaskWikiEdit<CR>
vnoremap <silent><buffer> <C-k>g :TaskWikiGrid<CR>
vnoremap <silent><buffer> <C-k>i :TaskWikiInfo<CR>
vnoremap <silent><buffer> <C-k>l :TaskWikiLink<CR>
vnoremap <silent><buffer> <C-k>m :TaskWikiMod<CR>
vnoremap <silent><buffer> <C-k>. :TaskWikiRedo<CR>
vnoremap <silent><buffer> <C-k>s :TaskWikiStart<CR>
vnoremap <silent><buffer> <C-k>S :TaskWikiStop<CR>
