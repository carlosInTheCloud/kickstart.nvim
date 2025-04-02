# VIM/NeoVim Short Keys

Outside of the motion keys (j,k,h,l), these are some of the most frequently use short keys that I personaly use when coding using NeoVim. Some of the short keys are exclusive to this setup, others are standard vim short keys.

## Open NeoVim

From the terminal, type nvim.
```
$ nvim
```

## Open The Terminal in a New buffer tab

```
:tab term 
```

## Folder, file, and tab navigation

### With Neo-tree

#### Open Folder Tree

```
:Neotree
```

#### Open file in split view

```
s
```

#### Open file on a new tab

```
t
```

#### Create new folder

```
A
```

#### Create a new file 

```
a
```

### With Telescope

#### Open File

```
<space>sd
```

#### While on the Open File Dialog

##### Open file in new tab

```
<Ctrl>t
```

##### Open file in vertical split buffer

```
<Ctrl>v
````

##### Open file in horizontal split buffer

```
<Ctrl>x
```

### Switching buffer context when on split view

While on normal mode, press the ctrl key plus any of the directional keys (h,j,k,l)

```
<Ctrl>(h,j,k,l)
```

### Switching between opened tabs

#### Switch to next (tab to the right)

```
tn
```

#### Switch to previous tab (tab to the left)

```
tp
```

### Go to line number

```
<line number>G
```

## Editing

### Undo

While on normal mode:

```
u
```

### Redo

While on normal mode:

```
<Ctrl>r
```

### Copy
While on normal mode, highlight the text by pressing v and navigate to the end of the text to be copied.
```
v (j,k,l,h)
```

Press the y key to yank (copy) the highlighted text.

```
y
```

### Paste

```
p
```
### Search and Replace

#### With Telescope

##### Find in current buffer

```
<space>/
```

##### Find in all files

```
<space>s/
```

#### WIth VIM commands

##### Find word in file

```
:/\<word>
```

##### Search and replace text in buffer

```
:%s/<word to replace/<word to replace with>/g
```

##### Search and replace all instances of the current word (word where the cursor is over) in a buffer

```
*:%s//<new word>/g
```
### Compare files
#### Compare two files

```
 <space>sC
```

#### Compare with current file

```
 <space>sc
```

### Multiline comment

#### WIth mini.comments
highlight text
```
<ctrl>v(h,j,k,l)
```
hit gc to comment. Repeat to uncomment


#### With VIM Commands
highlight text 
```
<ctrl>v(h,j,k,l)
```

Press Shift i 

```
<shift>i
```

Enter the comment character

```
/
```
Press escape

```
<Esc>
```
### Multiline Indent
highlight text 
```
<ctrl>v(h,j,k,l)
```
press shit+> (to the right) or shift+< (to the left)
To repeat the previous command, hit the "."

## LSPs

### Go to definition

```
gd
```

### Go to definition on new tab

```
gt
```

### Go to defition on vertical split

```
gv
```

### Go to definition on horizontal split

```
gh
```

### Go to reference

```
gr
```

### Rename variable

```
space rn
```

## Copy File Path

Open file, then on normal mode type command

```
Cppath
```
## Copilot
### Open Prompt
```
:CopilotChat
```
### Submit current prompt on insert mode
```
<C-s>
```

### Submit current prompt on normal mode
```
<CR>
```

## Other

### View Mapped keys

#### Normal mode key map

```
:nmap 
```

#### Visual mode key map

```
:vmap 
```

#### Insert mode key map 

```
:imap
```
### Markdown Preview
```
:MarkdownPreview
```
