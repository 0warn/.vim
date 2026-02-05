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

<h2 align="center">Keybinds....</h2>

1. `space + cd` -> for :Ex mode (vim)
2. `space + f` -> for :Files mode (fzf)
3. `space + b` -> for :Buffer mode (fzf)
4. `space + h` -> for :History mode (fzf)
5. `ctrl + v` -> for vertical split.
6. `ctrl + s` -> for split in half by potrait mode.
7. `ctrl + h/j/k/l` -> move between yout splited tabs (**left/down/up/rigt**)
8. `space + ESC` -> clear search highlight

--- 

## Some extra content for vim

01. `shift + 5` -> for new file in parent directory
02. `:e` -> in vim :e is used for new file creating in a parents sub-dir.
03. `:so` -> after making some changes in **.vimrc** this is the **source** command in vim.
04. `shift + v` -> for seleceting multiple lines.
05. `y` -> after selecting the things you can copy that in vim using that **y** keybind. `y -> yan/copy`
06. `p` -> that stands for paste. after **y** you can paste that using **p**. `p ->> paste`
07. `shift + c` -> this help to delete selected portion and directly get into **insert** mode.
08. `x` -> in normal mode you can delete a single letter using it. 
09. `dd` -> it can delete a single line.
10. `m + <any_letter/number>` -> This can help to mark a point in your code.
11. `w` -> this is for go to one word by word jump forward.
12. `b` -> this is for go to one word by one word jump in backward.
13. `/` -> this is for find anything. 
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
