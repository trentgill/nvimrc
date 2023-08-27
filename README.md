basic neovim setup

largely copied from the primeagen's setup / yt video

## requirements
- neovim
- cargo [for fennel-lsp] (https://www.rust-lang.org/learn/get-started)
- ripgrep [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep)
- fd [sharkdp/fd](https://github.com/sharkdp/fd)

## usage

<leader> is mapped to " " (aka spacebar)

#### file navigation
<leader>pv      open netrw directory manager
<leader>pf      fuzzy find a file and jump to it
<C-p>           fuzzy find a file in the git repo and jump to it
<leader>ps      grep for a string in wd and jump to it with preview

#### buffer navigation
VISUAL MODE with a highlighted selection
J               move selection down
K               move selection up

<C-u>           jump up half a page
<C-d>           jump down half a page

#### editing
<leader>u       open undotree

<leader>p       paste the register over highlighted text without editing register
<leader>y       yank to system clipboard
<leader>d       delete to void, leaving yank register in place

<leader>f       autoformat code

<leader>x       chmod+x the current file

#### search / replace
<leader>s       replace current word globally in buffer

#### git
<leader>gs      open fugitive for git access (TODO usage)

#### lsp / autocompletion
<C-space>       begin completion
<C-n>           next completion
<C-p>           previous completion
<C-y>           accept completion

gd              goto definition

TODO usage
K
<leader>vws
<leader>vd
[d
]d
<leader>vca
<leader>vrr
<leader>vrn
<C-h>

### conjure
<localleader> is "," (aka comma), abbr as <ll>

Evaluation
<ll>eb          evaluate the whole file
<ll>ee          evaluate inner expression under cursor
<ll>er          evaluate outermost expression from cursor
<ll>e!          evaluate form (ee) & replace it with the result
<ll>E           evaluate the visual selection
<ll>E_          evaluate from the cursor with a motion (eg. Eiw)

<ll>ew          inspect contents of a variable (eg. string, table)

Marked Evaluation
mf              mark a form (ee) for continued evaluation
<ll>emf         evaluate the marked form regardless of cursor

Log
<ll>lv          open log in a vertical split
<ll>lq          close all open log windows
<ll>lR          hard reset all logs in case of issues

Fennel:REPL
<ll>cs          start the fennel repl
<ll>cS          stop the fennel repl
<ll>eF          reload current file at runtime using ,reload ...

#### system level
:Mason          install new lang-servers
