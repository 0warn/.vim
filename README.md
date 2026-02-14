<h1 align="center">Vim C0nf</h1>

## Prefetch...

- This is the minimal configuration for a daliy user of vim.
- Well... I know every linux user want customization but some time simplicity matters the most.
- Now take a look.....

---

## Installation...

1. Copy the repository to your local machine using this...
```BASH
    git clone https://github.com/CYBER-4RMY/.vim.git
```
2. Now just make or edit your **.vimrc** form `/home/$USER/.vimrc` or `~/.vimrc` & add this line to it.
```VIM
    source ~/.vim/vimrc
```
3. Well that's all now you can get a difference between your previous vim and recent vim.

<img width="1920" height="1048" alt="image" src="https://github.com/user-attachments/assets/fb86baad-26b4-47e9-ae25-11decfd19817" />
<img width="1920" height="1047" alt="image" src="https://github.com/user-attachments/assets/ff84edc8-74cb-4b12-aa24-430d59c1f167" />

**Dependency**
    - Fzf
    - Vim

- That's all is it....

- For ARCH ('sudo pacman -S fzf vim')
- For DEBIAN ('sudo apt install fzf vim')
- For REDHAT ('sudo dnf/yum install fzf vim')

---

## Usage...

Well it is actually a normal vim with some tweak and other plugin mixture.

- All the commands and other things are avaliabale with some extra...
1. Fzf file search and number lines.
2. Relative number line for 100+ line of code help.
3. Syntax highlighting.
4. Auto tab and intelligent backspace.
5. Intelligent file back keybind.
6. New colorfull mode added
7. Coursor line added
8. spliting mode added with new keybind
9. Mouse intraction enabled

<h2 align="center">Keybinds....</h2>

This section outlines the keybindings available in your Vim configuration. `<leader>` is mapped to `space`.

1.  **General Navigation & FZF**:
    *   `space + cd` -> for `:Ex` mode (Vim's file explorer)
    *   `space + f` -> for `:Files` mode (FZF fuzzy file search)
    *   `space + b` -> for `:Buffers` mode (FZF fuzzy buffer search)
    *   `space + h` -> for `:History` mode (FZF command history search)
    *   `ctrl + v` -> for vertical split.
    *   `ctrl + s` -> for split in half by portrait mode.
    *   `ctrl + h/j/k/l` -> move between your splited tabs (**left/down/up/right**)
    *   `space + ESC` -> clear search highlight

2.  **Advanced Editing Keybindings**:
    *   `Q` -> Reformat selected text or current paragraph (uses `gq`).
    *   `Ctrl-U` (in Insert Mode) -> Deletes text from the cursor to the beginning of the line, but now each deletion is a separate undoable action.

3.  **Utility Keybindings**:
    *   `:TOhtml` -> Convert the current buffer to an HTML file (useful for sharing code with syntax highlighting).

4.  **Spell Checking Keybindings** (only active if spell checking is enabled - see Advanced Features):
    *   `space + sn` -> Move to the next misspelled word.
    *   `space + sp` -> Move to the previous misspelled word.
    *   `space + sa` -> Add the word under the cursor to the spell file.
    *   `space + sw` -> Mark the word under the cursor as a spelling mistake.
    *   `space + ss` -> Show spelling suggestions for the word under the cursor.

5.  **Competitive Programming Keybindings**:
    *   **Compile and Run**:
        *   `space + c` -> Compiles the current file (C++, Java). Python is interpreted, so it will just show a message.
        *   `space + r` -> Runs the compiled/interpreted program in a new terminal window.
        *   `space + cr` -> Compiles (if applicable) and then runs the program.
    *   **Test Case Handling**:
        *   `space + ti` -> Creates an empty `input.txt` file in the current directory.
        *   `space + te` -> Creates an empty `expected_output.txt` file in the current directory.
        *   `space + td` -> Runs your program with `input.txt` as stdin, saves the output to `output.txt`, and opens a diff view with `expected_output.txt`.

---

<h2 align="center">Advanced Features....</h2>

This configuration has been enhanced with several advanced features inspired by Vim's default settings and optimized for competitive programming.

- **Matchit Plugin**: The `matchit` plugin is now included. This plugin enhances the `%` command to jump between matching HTML/XML tags, and other language constructs. See the "Filetype Specific Features" section for more details.

- **New Keybindings**:
    - `Q` -> In normal mode, this key is now mapped to `gq` for easy text formatting. For example, `gqap` will format the current paragraph.
    - `Ctrl-U` in Insert Mode -> This key combination is now undoable in a single step, making it safer to use.

- **New Options**:
    - **Backup Files**: Vim will now automatically create a backup file when you save a file. This can be useful for recovering lost work.
    - **Jump to Last Cursor Position**: When you open a file, the cursor will automatically jump to the last known position.

- **Man Page Viewer**: You can now use Vim to read man pages. Just run `man <command>` in your shell, and it will open in Vim.

- **Convert to HTML**: You can convert the current buffer to an HTML file with the `:TOhtml` command. This is great for sharing code with syntax highlighting.

- **Spell Checking**:
    - To enable spell checking, uncomment the `set spell` and `set spelllang=en_us` lines in `options.vim`.
    - Once enabled, you can use the following keybindings:
        - `space + sn`: Move to the next misspelled word.
        - `space + sp`: Move to the previous misspelled word.
        - `space + sa`: Add the word under the cursor to the spell file.
        - `space + sw`: Mark the word under the cursor as a spelling mistake.
        - `space + ss`: Show spelling suggestions for the word under the cursor.

- **Code Templates for Competitive Programming**:
    - Templates are available for C++ (`.cpp`), Python (`.py`), Java (`.java`), C (`.c`), Golang (`.go`), Rust (`.rs`), and Bash (`.sh`).
    - To use, simply create a new file with the corresponding extension (e.g., `:e main.cpp` or `:e script.sh`). The template will be automatically inserted.

- **Compile and Run (`space + c`, `space + r`, `space + cr`)**:
    - These keybindings are available in normal mode.
    - `space + c`: Compiles the current file (C++, Java). For Python, it will just show a message as Python is interpreted.
    - `space + r`: Runs the compiled/interpreted program in a new terminal window.
    - `space + cr`: Compiles (if applicable) and then runs the program.

- **Test Case Handling (`space + ti`, `space + te`, `space + td`)**:
    - These keybindings are available in normal mode.
    - `space + ti`: Creates an empty `input.txt` file in the current directory for providing custom test inputs. Open this file to input your test data.
    - `space + te`: Creates an empty `expected_output.txt` file for storing the expected output of a test case. Open this file to paste or type the correct output.
    - `space + td`: Runs your program with `input.txt` as stdin, saves the output to `output.txt`, and then opens a diff view between `output.txt` and `expected_output.txt`. This allows you to quickly compare your program's output with the expected output.

- **Debugging with `termdebug`**:
    - Vim's built-in terminal debugger is now enabled.
    - To start a debugging session for a C/C++ program, compile your program with debugging symbols (e.g., `g++ -g main.cpp -o main`). Then, in Vim, use the command `:Termdebug <your-program-executable>`. This integrates `gdb` into Vim, allowing you to set breakpoints, step through code, and inspect variables. Refer to `:help termdebug` for more detailed usage.

- **Code Snippets with Abbreviations**:
    - You can create simple code snippets using Vim's built-in abbreviations. These are defined in your `keybinds.vim`.
    - To use an abbreviation, type the abbreviation in insert mode, and it will expand automatically.
    - Examples:
        - **C++**: `forloop` expands to a basic `for` loop.
        - **Golang**:
            - `mainf`: Expands to a basic `func main()` structure.
            - `forr`: Expands to a `for ... range` loop structure.
        - **Rust**:
            - `mainf`: Expands to a basic `fn main()` structure.
            - `forr`: Expands to a `for ... in` loop structure.
        - **Bash**:
            - `shbang`: Expands to `#!/bin/bash` with a newline.
            - `iff`: Expands to a basic `if [ ] then fi` block.

- **Autosuggestions**:
    - While Vim's core functionality is autocompletion (triggered by `Ctrl-N` or `Ctrl-X Ctrl-O`), true autosuggestion (suggestions appearing as you type) can be achieved with external plugins. If you wish to explore this, you might consider plugins like `vim-autosuggestions` (which you would install using Vim's native package management by cloning it into `~/.vim/pack/plugins/start/`).


---

<h2 align="center">Filetype Specific Features....</h2>

This configuration uses Vim's filetype plugins to provide features tailored to specific programming languages. These plugins are enabled by `filetype plugin indent on` in `options.vim`, so you get all these features automatically.

### Python

- **Omni Completion**: Use `Ctrl-X Ctrl-O` in insert mode for intelligent completion of Python code.
- **Navigation**:
    - `]]` and `[[`: Jump between classes and functions.
    - `]m` and `[m`: Jump to the next/previous method.
- **Documentation**: Press `K` on a keyword to open its documentation with `pydoc`.
- **Testing**: If you are in a file named `test_*.py` or `*_test.py`, you can run `pytest` on it with the `:make` command.

### C/C++

- **Omni Completion**: Use `Ctrl-X Ctrl-O` in insert mode for intelligent completion of C/C++ code.
- **Navigation**: Use `%` to jump between `#if`/`#elif`/`#else`/`#endif` blocks.
- **Documentation**: Press `K` on a keyword to open its man page in a new terminal window.

### HTML

- **Omni Completion**: Use `Ctrl-X Ctrl-O` in insert mode for intelligent completion of HTML tags.
- **Navigation**: Use `%` to jump between opening and closing HTML tags.
- **Folding**: HTML tags will be automatically folded. You can use `za` to toggle folds.

### Go

- **Formatting**: Use `gq` to format your Go code with `gofmt`. For example, `gqip` will format the current paragraph.
- **Navigation**:
    - `]]` and `[[`: Jump between `func` and `type` blocks.
- **Documentation**: Press `K` on a keyword to look up its documentation with `go doc`.

### Shell

- **Navigation**: Use `%` to jump between `if`/`fi`, `for`/`done`, and `case`/`esac`.
- **Documentation**: In a bash script, press `K` on a command to look up its documentation.
- **Linting**: If you have `shellcheck` installed, you can run it on your script with the `:make` command to find potential errors. You can install it with `sudo apt install shellcheck`, `sudo dnf install shellcheck`, or `sudo pacman -S shellcheck`.

---

## Some extra content for vim

01. `shift + 5` -> for new file in parent directory
02. `:e` -> in vim :e is used for new file creating in a parents sub-dir.
03. `:so` -> after making some changes in **.vimrc** this is the **source** command in vim.
04. `shift + v` -> for seleceting multiple lines.
05. `y` -> after selecting the things you can copy that in vim using that **y** keybind. `y -> yan/copy`
06. `p` -> that stands for paste. after **y** you can paste that using **p`. `p ->> paste`
07. `shift + c` -> this help to delete selected portion and directly get into **insert** mode.
08. `x` -> in normal mode you can delete a single letter using it. 
09. `dd` -> it can delete a single line.
10. `m + <any_letter/number>` -> This can help to mark a point in your code.
11. `w` -> this is for go to one word by word jump forward.
12. `b` -> this is for go to one word by one word jump in backward.
13. `/ -> this is for find anything. 
14. `n` -> after find that is the next word jump keybind forward.
15. `N/ shift + n` -> this is for reverse side jump
16. `ctrl + n` -> show suggestion in your code after writing something where you forgot.
17. `ctrl + r` -> for replace anything.
18. `esc` -> that helps to go commander mode.
19. `i/a` -> that help to go in insert mode. where you can able to write.
20. `:w` -> when you write something then if you want to save that then hit **esc** then type that **:w* to save.
21. `:q` -> when you want to quite that save file then you have to enter that **:q** command (before you go every time you have to hit **esc** button)
22. `:q!` -> when you want to over write your code or something what you written and get back to your old code or thing then this is the helper for you.
23. `u` (undo) -> when you are in commander mode then it will **undo** the thing what you did to that code.
24. `ctrl + r` (redo) -> If  you did something right and took wine and then do the wrong thing again then this is the helper for you.
25. `:colorscheme` -> this help you to set colorscheme in your vim. (preinstalled only)

<h2 align="center">===(BONOUS)===</h2>

- When you are deleting one word you can give size like `7x` that will gonna delete 7 letters form your that line and the courser place Or for a word `dw`.
- Similar for `dd` you can do it by entering any line number that will delete form your courser present place. like `10dd` -> 10 line delete.

---

> To be continue........ :)
