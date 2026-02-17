<h1 align="center">Vim C0nf - Comprehensive Minimalist Setup</h1>

This document provides an exhaustive overview of your Vim configuration, detailing every feature, option, keybinding, and template. This setup prioritizes efficiency and a clean workflow, leveraging Vim's native capabilities and the `fzf` tool while carefully integrating additional functionalities.

## ✨ Key Features at a Glance:

*   🚀 **Fast Navigation & Fuzzy Finding:** Integrated `fzf` for lightning-fast file, buffer, and history searching.
*   🧠 **Smarter Autocompletion:** Enhanced built-in completion for a more VS Code-like experience without plugins.
*   💻 **Competitive Programming Ready:** Quick compile, run, and test case management for various languages.
*   📚 **Extensive Auto-Templates:** Automatically inserts boilerplate for 20+ languages upon new file creation.
*   ✂️ **Advanced Code Folding:** Automatic and manual code folding for better file navigation in supported languages.
*   📊 **Informative Custom Status Line:** Displays critical file, buffer, and position information at a glance.
*   🐙 **Integrated Git Workflow:** Direct access to `git status`, `diff`, and `blame` commands within Vim splits.
*   ✅ **Integrated Linting:** `flake8` linting for Python via `:make` with quickfix navigation.
*   ⚙️ **Optimized Core Settings:** A carefully curated set of Vim options for a modern editing experience.

---

## 🛠️ Installation:

1.  **Clone the Repository:**
    ```bash
    git clone https://github.com/CYBER-4RMY/.vim.git ~/.vim
    ```
2.  **Configure Global `.vimrc`:**
    Create or edit your global `.vimrc` file (typically `~/.vimrc` or `/home/$USER/.vimrc`) and add the following line to source this configuration:
    ```vim
    source ~/.vim/vimrc
    ```
3.  **Install Essential Dependencies:**
    Ensure you have `fzf` and `Vim` (version 8.1 or higher for `terminal` command) installed. For Python linting, `flake8` is needed.
    *   **For Arch Linux:** `sudo pacman -S fzf vim`
    *   **For Debian/Ubuntu:** `sudo apt install fzf vim`
    *   **For Fedora/RHEL:** `sudo dnf install fzf vim`
    *   **For Python Linting:** `pip install flake8`

---

## 📂 Configuration Files Explained:

Your `~/.vim/` directory is structured logically:

*   `vimrc`: The main entry point, sourcing all other configuration files.
*   `options.vim`: Contains all general Vim `set` options, autocommands for templates, and folding configurations.
*   `keybinds.vim`: Defines all custom key mappings, with `space + ` set to `space`.
*   `statusline.vim`: Defines the appearance and content of your custom status line.
*   `plugins/`: A directory for self-contained Vim plugins (e.g., `fzf.vim`, `compiler.vim`).
*   `templates/`: Stores boilerplate code for various languages, automatically inserted into new files.
*   `colors/`: Contains color schemes.
*   `backup/` & `undo/`: Directories for persistent undo history and file backups.

---

## ⚙️ Core Vim Options (`options.vim`):

This file defines numerous `set` commands to customize Vim's behavior.

*   `set nocompatible`: Ensures Vim behaves like Vim, not old Vi.
*   `set number`: Displays absolute line numbers.
*   `set relativenumber`: Displays relative line numbers (e.g., `-1`, `+2`) alongside absolute numbers, useful for navigation.
*   `set laststatus=2`: Always shows the status line.
*   `filetype plugin indent on`: Enables filetype detection, specific plugins, and smart indentation.
*   `set expandtab`: Converts tabs to spaces.
*   `set shiftwidth=4`: Sets the number of spaces for (auto)indentation.
*   `set softtabstop=4`: Sets the number of spaces a Tab in the file uses.
*   `set tabstop=4`: Sets the visual width of a tab character.
*   `set smartindent`: Enables intelligent auto-indenting for C-like languages.
*   `set backspace=indent,eol,start`: Allows backspacing over autoindent, end-of-line, and start of insert.
*   `syntax on`: Enables syntax highlighting.
*   `colorscheme pablo`: Sets the default color scheme to `pablo`.
*   `set cursorline`: Highlights the current line with the cursor.
*   `set scrolloff=8`: Keeps 8 lines of context above/below the cursor when scrolling.
*   `set sidescrolloff=8`: Keeps 8 columns of context left/right of the cursor when scrolling horizontally.
*   `set showcmd`: Displays partial commands in the status line.
*   `set showmode`: Displays the current Vim mode (INSERT, VISUAL, etc.) in the status line.
*   `set ignorecase`: Ignores case in search patterns.
*   `set smartcase`: Overrides `ignorecase` if the search pattern contains uppercase characters.
*   `set incsearch`: Highlights matches as you type the search pattern.
*   `set hlsearch`: Highlights all matches after a search.
*   `set undofile`: Enables persistent undo history.
*   `set undodir=~/.vim/undo//`: Specifies the directory for undo files.
*   `set backup`: Creates a backup file before overwriting.
*   `set backupdir=~/.vim/backup//`: Specifies the directory for backup files.
*   `set splitbelow`: New horizontal splits appear below the current window.
*   `set splitright`: New vertical splits appear to the right of the current window.
*   `set autoindent`: Copies the indent from the previous line.
*   `set smarttab`: Inserts `shiftwidth` number of spaces if `expandtab` is set.
*   `set formatoptions+=cro`: Auto-continuation for comments.
*   `set showmatch`: Briefly jumps to the matching bracket when a bracket is typed.
*   `set matchtime=2`: Time in tenths of a second for `showmatch` jump.
*   `set mouse=a`: Enables mouse support in all modes.
*   `set ttimeout`: Enables timeout for key codes.
*   `set ttimeoutlen=100`: Timeout length in milliseconds for key codes.
*   `set display=truncate`: Shows `@@@` in the last line if it's truncated.
*   `set nrformats-=octal`: Disables octal number recognition for `Ctrl-A` and `Ctrl-X`.
*   `autocmd BufReadPost ...`: Jumps to the last known cursor position when reopening a file.
*   `set nolangremap`: Prevents langmap from applying to characters from mappings.
*   `let g:html_expr_folding = 1`: Enables expression-based folding for HTML files.
*   `set spell`: Enables spell checking.
*   `set spelllang=en_us`: Sets the spell check language to US English.
*   `augroup templates ...`: Autocommands for inserting boilerplate into new files (see **Code Templates**).
*   `set wildmenu`: Enhances command-line completion with a menu.
*   `set wildmode=longest:full,full`: Configures `wildmenu` behavior for more intuitive completion.
*   `set inccommand=split`: Shows a live preview of substitution commands (`:s`) in a split window.
*   `set completeopt=menu,menuone,noselect`: Configures completion menu behavior for a less intrusive experience.
*   `set foldenable`: Enables code folding.
*   `set foldlevelstart=99`: Starts new files with all folds open.
*   `augroup filetype_folds ...`: Autocommands to set `foldmethod` based on filetype (`indent` for Python/Ruby/YAML, `syntax` for Vim/XML/HTML/C/C++/Java).
*   `augroup filetype_linting ...`: Autocommands to set `makeprg` for filetype-specific linting (e.g., `flake8` for Python).

---

## ⌨️ All Keybindings (`keybinds.vim`):

The `<leadeer>` key is mapped to `space`. All keybindings are `nnoremap` unless specified.

### General Navigation & Window Management:

*   `space + cd`: Open Vim's built-in file explorer (`:Ex`).
*   `<C-v>`: Split current window vertically.
*   `<C-s>`: Split current window horizontally.
*   `<C-h>`: Move focus to the window on the left.
*   `<C-j>`: Move focus to the window below.
*   `<C-k>`: Move focus to the window above.
*   `<C-l>`: Move focus to the window on the right.
*   `space + <Esc>`: Clear all current search highlights (`:nohlsearch`).

### Fuzzy Finding (FZF Enhancements):

*   `space + f`: Fuzzy find files in the current project (`:Files`).
*   `space + b`: Fuzzy find and switch between open buffers (`:Buffers`).
*   `space + h`: Fuzzy find and execute commands from history (`:History`).

> **Note on FZF Commands (`space + a`, `space + l`, `space + gc`):**
> Due to the preference of not installing external plugins from GitHub, advanced FZF commands like `:Ag` (project-wide text search), `:Lines` (search in buffers), and `:Commits` (git commit history) are not available in this configuration. The keybindings for these commands (`space + a`, `space + l`, `space + gc`) have been removed from `keybinds.vim` to avoid confusion.

### Vim-Native Search Alternatives (No Plugins):

Since advanced FZF commands are not available, here are some Vim-native ways to achieve similar search functionality:

*   **Project-Wide Search (`:grep` or `:vimgrep`):**
    *   **Using `grep`:** Vim's `:grep` command can execute external `grep` (or `ripgrep` if configured) and populate the quickfix list.
        1.  **Configure `grepprg` (optional but recommended):** Add `set grepprg=rg\ --vimgrep` to your `options.vim` if you have `ripgrep` installed for faster searches.
        2.  **Execute search:** `:grep <pattern> <files>` (e.g., `:grep -r "myFunction" .` to search recursively in current directory).
        3.  **Navigate results:** Use Quickfix Navigation keybindings (`space + co`, `space + cn`, `space + cp`).
    *   **Using `vimgrep`:** Vim's built-in `:vimgrep` command searches within Vim buffers or files and populates the quickfix list.
        1.  **Execute search:** `:vimgrep /<pattern>/gj <files>` (e.g., `:vimgrep /myFunction/gj **/*.py` to search Python files recursively). The `j` flag jumps to the first match, `g` finds all matches on a line.
        2.  **Navigate results:** Same Quickfix Navigation keybindings.

*   **Searching Lines in Open Buffers:**
    *   Use the `:bufdo` command to execute a search across all currently loaded buffers.
        *   `:bufdo /<pattern>/e` will jump to the first occurrence of `<pattern>` in each buffer.
        *   `:bufdo %s/<pattern>//gn` will show the count of matches in each buffer without changing the buffer content. You can then use the quickfix list to see the matches if you combine it with `caddbuffer`. (This is more advanced)

*   **Viewing Git Commits:**
    *   You can directly open a terminal split and run `git log`.
        *   `space + gs` already opens `git status`. From there, you can type `git log`
        *   Alternatively, you can create a specific keybinding (e.g., `space + gl`) to open `git log` in a new terminal split, similar to how `git status` is mapped.


### Autocompletion:

*   `Q` (normal mode): Reformat selected text or current paragraph (`gq`).
*   `<C-U>` (insert mode): Deletes text from cursor to start of line, but each deletion is a separate undoable action (`<C-G>u<C-U>`).

### Code Folding:

*   `space + ft`: Toggle a fold (open/close) under the cursor (`za`).
*   `space + fo`: Open all folds in the current file (`zR`).
*   `space + fc`: Close all folds in the current file (`zM`).

### Session Management:

*   `space + ss`: Save the current session (open files, window layout, etc.) to a file named `Session.vim` in the current directory (`:mksession! Session.vim`).
*   `space + sl`: Load a session from a file named `Session.vim` in the current directory (`:source Session.vim`).

### Quickfix List Navigation:

*   `space + co`: Open the quickfix window to view a list of errors/warnings.
*   `space + cc`: Close the quickfix window.
*   `space + cn`: Jump to the next item in the quickfix list.
*   `space + cp`: Jump to the previous item in the quickfix list.

### Spell Checking:

*   `space + sn`: Move to the next misspelled word (`]s`).
*   `space + sp`: Move to the previous misspelled word (`[s`).
*   `space + sa`: Add the word under the cursor to the spell file (`zg`).
*   `space + sw`: Mark the word under the cursor as a spelling mistake (`zw`).
*   `space + ss`: Show spelling suggestions for the word under the cursor (`z=`).

### Competitive Programming:

*   `space + c`: Compiles the current file (`:Compile`).
*   `space + r`: Runs the compiled/interpreted program in a new terminal (`:Run`).
*   `space + cr`: Compiles (if applicable) and then runs the program (`:CompileAndRun`).
*   `space + ti`: Creates an empty `input.txt` file in the current directory (`:CreateInputFile`).
*   `space + te`: Creates an empty `expected_output.txt` file in the current directory (`:CreateExpectedOutputFile`).
*   `space + td`: Runs your program with `input.txt` as stdin, saves output to `output.txt`, and opens a diff view with `expected_output.txt` (`:RunAndDiff`).

### Git Integration:

*   `space + gs`: Show `git status` output in a new horizontal split terminal (`:split | terminal git status`).
*   `space + gd`: Show `git diff` for the current file (`%`) in a new vertical split terminal (`:vsplit | terminal git diff %`).
*   `space + gb`: Show `git blame` for the current file (`%`) in a new vertical split terminal (`:vsplit | terminal git blame %`).

### Utility Keybindings:

*   `:TOhtml`: Command to convert the current buffer to an HTML file (useful for sharing code with syntax highlighting).

---

## 📄 Code Templates (`templates/`):

Templates are automatically inserted into a new buffer when you create a file with the corresponding extension.

*   **Assembly (`.s`, `.asm`)**: Basic "Hello, World!" for x86-64 Linux.
*   **Bash (`.sh`)**: Basic script structure.
*   **C (`.c`)**: Standard C boilerplate.
*   **C++ (`.cpp`)**: Enhanced for competitive programming with common includes, fast I/O, and `solve()` function.
*   **CSS (`.css`)**: Basic reset and body styles.
*   **Dockerfile (`Dockerfile`)**: Minimal Dockerfile structure with commented-out common commands.
*   **Go (`.go`)**: Basic `main` function and example.
*   **HTML (`.html`)**: Standard HTML5 boilerplate with linked CSS and JS.
*   **Java (`.java`)**: Basic `public static void main` structure.
*   **JavaScript (`.js`)**: Basic `main` function with "Hello, World!".
*   **Kotlin (`.kt`)**: Basic `main` function with "Hello, World!".
*   **Lua (`.lua`)**: Basic print and example function.
*   **Nim (`.nim`)**: Basic echo and example procedure.
*   **Perl (`.pl`)**: Basic script structure with `use strict; use warnings;` and example subroutine.
*   **Python (`.py`)**: Basic boilerplate.
*   **Rust (`.rs`)**: Basic `main` function.

---

## 📊 Custom Status Line (`statusline.vim`):

Your status line, displayed at the bottom of the Vim window, provides a clean overview of your current context:

*   **Left Section:**
    *   Full path to the current file.
    *   `[+]` indicator if the file has been modified.
    *   `[RO]` indicator if the file is read-only.
*   **Right Section:**
    *   Filetype of the current buffer (e.g., `python`, `cpp`).
    *   Current line number and total lines (e.g., `10/100`).
    *   Percentage through the file (e.g., `10%`).
    *   Current column number.

---

## 🎯 Filetype Specific Features:

This configuration leverages Vim's built-in filetype plugins to provide tailored enhancements for various languages. These features are automatically enabled via `filetype plugin indent on` in `options.vim`.

### Python:

*   **Linting with `:make`**:
    *   **Functionality**: Check your Python code for errors and style issues using `flake8`.
    *   **Setup**: Ensure `flake8` is installed (`pip install flake8`).
    *   **Usage**: While in a Python file, run the command `:make`. This executes `flake8 %` and populates the quickfix list.
    *   **Navigation**: Use **Quickfix Navigation** keybindings (`space + co` to open, `space + cn` to jump to next error) to navigate issues.
*   **Omni Completion**: Use `<C-x C-o>` in insert mode for intelligent code completion.
*   **Navigation**: `]]` and `[[` jump between classes/functions; `]m` and `[m` jump to next/previous methods.
*   **Documentation**: Press `K` on a keyword to open its documentation (`pydoc`).

### C/C++:

*   **Omni Completion**: Use `<C-x C-o>` in insert mode for intelligent code completion.
*   **Navigation**: `%` jumps between `#if`/`#elif`/`#else`/`#endif` blocks.
*   **Documentation**: Press `K` on a keyword to open its man page in a new terminal window.

### HTML:

*   **Omni Completion**: Use `<C-x C-o>` in insert mode for intelligent HTML tag completion.
*   **Navigation**: `%` jumps between opening and closing HTML tags.
*   **Folding**: HTML tags are automatically folded; `za` toggles folds.

### Go:

*   **Formatting**: Use `gq` to format your Go code with `gofmt`.
*   **Navigation**: `]]` and `[[` jump between `func`/`type` blocks.
*   **Documentation**: Press `K` on a keyword to look up its documentation (`go doc`).

### Shell:

*   **Navigation**: `%` jumps between `if`/`fi`, `for`/`done`, and `case`/`esac` blocks.
*   **Documentation**: Press `K` on a command to look up its man page.
*   **Linting**: If `shellcheck` is installed, run it on your script with the `:make` command to find potential errors.

---

## 🔌 Local Plugins (`plugins/`):

These are self-contained plugins residing in your `~/.vim/plugins/` directory.

*   `compiler.vim`: Provides commands (`:Compile`, `:Run`, `:CompileAndRun`, `:CreateInputFile`, `:CreateExpectedOutputFile`, `:RunAndDiff`) for competitive programming workflows.
*   `fzf.vim`: Integrates the core `fzf` fuzzy finder functionality, providing commands like `:Files`, `:Buffers`, `:History`. Note that advanced commands like `:Ag` (project-wide text search), `:Lines` (search in buffers), and `:Commits` (git commit history) are not available as they require the full `fzf.vim` plugin distribution from GitHub.
*   `mod_ff.vim`: (Functionality derived from its name, likely file manipulation or formatting related).
*   `tohtml.vim`: Enables the `:TOhtml` command to convert the current buffer to an HTML file with syntax highlighting.
*   `matchit` (auto-loaded): Enhances `%` command to jump between matching constructs (HTML/XML tags, #if/#endif, etc.).
*   `termdebug` (auto-loaded, if debugger support is available): Vim's built-in terminal debugger, integrating `gdb` for C/C++ debugging.

---
