<h2 align="center">Neovim PDE - Personalized Development Environment</h2>

![Neovim](https://github.com/johnsci911/nvim-ide/assets/6580895/c663b535-d5de-4f37-afdf-231c9bf4a698)

<h5 align="center">A neovim configuration base from the vim community</h5>

#### Awesome Plugins that are used

- **Tabnine** - AI base autocompletion integrated with cmp
- **lsp-trouble** - to jumping between lsp warnings
- **nvim-treesitter** - for accurate syntax highlighting
- **vim-windowswap** - to swap windows
- **nvim-telescope** - to preview files while searching
- **ctrlsf.vim** and **vim-visual-multi** - to find and replace some text with multi-cursor support
- **vim-easy-align** - (gaip) Easy align texts
- **Neoclip** - Clipboard
- **Neorg** - ORG Mode for organization (Similar to Emacs) ('NEW!')

#### What's new

- C# (Omnisharp WIP)
- Re-add Galaxyline status line
- Notifications
- Clipboards!
- Lazy.nvim (Faster loading package manager)
- Tabnine autocompletion support
- Update Icon to fix nerd fonts incompatibility
- Laravel blade syntax highlighting (Beta) 🔥
- Neogit - for vim superpowers

#### Packages Required

- Neovim 0.9+ (required)
- ripgrep
- fd and Chafa - for some reason required by Telescope media files <-- TODO use plugin with sharper preview
- fzf
- Tabnine code complection (Create your own account. Free version is awesome)
- Neorg Note taking plugin (GCC 14+)

##### Compatible OS

- Mac and Linux (Prefer LINUX)
- Windows - You have to use your own docker container or equivalent - **I don't have time for windows :p**

#### LSP Auto-install

- C++ (clang)
- bash
- css
- html
- json
- lua
- intelephense - (Phpactor if not using paid intelephense)
- python
- vim
- yaml
- vue
- emmet ls
- c-sharp
- TailwindCSS
- GraphQL

#### Custom Syntax Highlighting

- Blade
- Norg - Neo ORG

#### TODO

- Improve keybindings for Tabnine autocompletion
- Formatters for various web frameworks (disabled by default)

### Intelephsense install:

- npm i intelephense -g

# Neovim PDE - Folding and Common Commands

## Folding Commands

Folding allows you to collapse and expand sections of code for better readability.

- `zc`: Close fold under cursor
- `zo`: Open fold under cursor
- `za`: Toggle fold under cursor
- `zM`: Close all folds
- `zR`: Open all folds
- `zm`: Increase fold level by one
- `zr`: Decrease fold level by one
- `zj`: Move to next fold
- `zk`: Move to previous fold
- `zf`: Create a fold (in visual mode)
- `zd`: Delete fold under cursor
- `zE`: Delete all folds in the current buffer

## Navigation

- `gg`: Go to the top of the file
- `G`: Go to the bottom of the file
- `{`: Jump to previous paragraph
- `}`: Jump to next paragraph
- `Ctrl-o`: Jump to previous location
- `Ctrl-i`: Jump to next location
- `%`: Jump between matching brackets

## Search and Replace

- `/pattern`: Search forward for pattern
- `?pattern`: Search backward for pattern
- `n`: Repeat search in same direction
- `N`: Repeat search in opposite direction
- `:%s/old/new/g`: Replace all occurrences of 'old' with 'new' in the file
- `:%s/old/new/gc`: Replace all occurrences with confirmation

## File Management

- `:e filename`: Edit a file
- `:w`: Save changes
- `:q`: Quit (fails if unsaved changes)
- `:q!`: Quit without saving
- `:wq`: Save and quit
- `:bn`: Go to next buffer
- `:bp`: Go to previous buffer
- `:bd`: Delete current buffer

- `<Leader>,s`: Initialize incremental selection (Treesitter)
- `<Leader>,c`: Increment selection by scope (Treesitter)
- `<Leader>,d`: Decrement selection (Treesitter)
- `<S-f>`: Open Telescope file finder
- `<D-s>`: Save file
- `<S-t>`: Open Trouble view for errors and warnings
- `<S-c>`: Close Trouble view
- `-`: Open parent directory with Oil
- `c`: Close Oil directory
- `<Leader>z`: Open LazyGit

## Plugin-Specific Commands

### NvimTree

- `<C-n>`: Toggle NvimTree
- `a`: Add file/directory
- `d`: Delete file/directory
- `r`: Rename file/directory
- `x`: Cut file/directory
- `c`: Copy file/directory
- `p`: Paste file/directory

### LSP

- `gd`: Go to definition
- `gr`: Go to references
- `gi`: Go to implementation
- `K`: Show hover information
- `<Leader>rn`: Rename symbol
- `<Leader>ca`: Code action

### Comment

- `gcc`: Toggle line comment
- `gbc`: Toggle block comment

### Gitsigns

- `]c`: Next hunk
- `[c`: Previous hunk
- `<Leader>hs`: Stage hunk
- `<Leader>hu`: Undo stage hunk
- `<Leader>hR`: Reset hunk

Remember to replace `<Leader>` with your actual leader key (typically space or backslash).

For more detailed information on each plugin and its commands, refer to their respective documentation.
