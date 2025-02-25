" Key Maps
nnoremap <C-p> :Files<CR>

" Vars

let g:fzf_action = {
  \ 'enter': 'edit',
  \ 'ctrl-t': 'tabnew',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Commands

command! -nargs=0 FZFOpenFolder call fzf#run({
      \ 'source': 'fd --type d --exclude "go" --exclude ".share" --exclude ".nvm" --exclude ".npm" --exclude ".mozilla" --exclude "Downloads" --exclude ".vscode" --exclude ".docker" --exclude "node_modules" --exclude ".config" --exclude ".git" --exclude ".cache" --exclude ".aws-sam" --exclude "venv" --exclude "__pycache__" . $HOME | sort',
      \ 'sink': {dir -> execute('cd ' . dir . ' | Startify | NERDTreeCWD')},
      \ 'options': '--preview "ls -la --color {}"'
      \ })

nnoremap <C-k>o :FZFOpenFolder<CR>
