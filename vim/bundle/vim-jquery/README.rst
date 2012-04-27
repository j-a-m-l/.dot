jquery.vim
==========

jQuery is a fast and concise JavaScript Library that simplifies HTML document
traversing, event handling, animating, and Ajax interactions for rapid web
development. jQuery is designed to change the way that you write JavaScript.
See http://jquery.com/ for more details.

The syntax file for Vim add some colorations for jQuery keywords (empty clone
hasClass hide show animate ...) and for CSS selectors (:empty :hidden :selected
:first ...).
 

Install details
---------------

Copy the jquery.vim file to $HOME/.vim/syntax/ and add the following line to
your vimrc:::

    au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
