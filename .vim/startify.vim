" Vars
let g:ascii = [
      \ ' /$$$$$$$$ /$$                   /$$   /$$              /$$$$$$ /$$           /$$    /$$ /$$$$$$ /$$      /$$',
      \ '|__  $$__/| $$                  | $$  | $/             |_  $$_/| $$          | $$   | $$|_  $$_/| $$$    /$$$',
      \ '   | $$   | $$$$$$$   /$$$$$$  /$$$$$$|_//$$$$$$$        | $$ /$$$$$$        | $$   | $$  | $$  | $$$$  /$$$$',
      \ '   | $$   | $$__  $$ |____  $$|_  $$_/  /$$_____/        | $$|_  $$_/        |  $$ / $$/  | $$  | $$ $$/$$ $$',
      \ '   | $$   | $$  \ $$  /$$$$$$$  | $$   |  $$$$$$         | $$  | $$           \  $$ $$/   | $$  | $$  $$$| $$',
      \ '   | $$   | $$  | $$ /$$__  $$  | $$ /$$\____  $$        | $$  | $$ /$$        \  $$$/    | $$  | $$\  $ | $$',
      \ '   | $$   | $$  | $$|  $$$$$$$  |  $$$$//$$$$$$$/       /$$$$$$|  $$$$/         \  $/    /$$$$$$| $$ \/  | $$',
      \ '   |__/   |__/  |__/ \_______/   \___/ |_______/       |______/ \___/            \_/    |______/|__/     |__/',
      \ '                                                                                                             ',
      \ '                                                                                                             ',
      \]

let g:startify_padding_left = winwidth(0) / 3

let g:startify_custom_header = startify#center(g:ascii)

let g:startify_custom_footer = startify#center([
      \ '- Tip: Press [CTRL] + P for quick file explorer! -',
      \ '- Tip: Use [CTRL] + T to toggle NERD Tree! -',
      \ ])

let g:startify_enable_special = 1
let g:startify_files_number = 7
let g:startify_change_to_dir = 1
let g:startify_change_to_vcs_root = 1
