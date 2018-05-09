
# Emacs basics

These are some basic emacs commands that I noted down while going through emacs built-in tutorial. Sometimes I also use this file to try out different css files with the markdown-mode html preview/export command. Previewing a markdown file is: `C-c C-c p`. Replace 'p' with 'e' to export the markdown to an html file with the same name in the current directory.

## Navigation

C-f, C-b, C-n, C-p: forward, backward, next line, prev line

M-f, M-b: Move forward/backward by a word (or by C-left/right)

C-a, C-e: Move to beginning/end of a line

M-a, M-e: Move to beginning/end of a sentence

C-up/down: Move up or down by a paragraph(fastest)

C-v, M-v: Page Up/Down

M-<, M->: Move to beginning/end of document

C-l: Center the text around the cursor


## Misc commands

Numeric command: C-u <num> <command> will repeat the command num times

C-g: To stop command which is taking too long to respond

C-/: undo the previous command

C-x 0: kill current window

C-x 1: kill all windows except the current one (cursor)

C-x 2: split active window vertically

C-x 3: split active window horizontally

M-x text-mode: Switch to text mode(similarly python-mode, java-mode)

M-g g: Jump to specified line


## Deletion and Copying

C-d: Acts like a 'delete' key, <DEL> key is the backspace

M-<del>, M-d: Delete the word before/after cursor

C-k, M-k: Delete words until end of line/sentence

C-<Space>: Start Visual mode and enter the command (C-w will delete the selected text)

C-k: Kill a line, can yank it back later. C-y to yank it back it later.

C-w: Kill region (i.e cut) 

M-w: Kill region without deleting (i.e copy)

M-y: To yank the lines killed before the current kill


## Files and buffers

C-x C-f: Find a file

C-x C-f <FILENAME>: will create a file 

C-x C-s <FILENAME>: Save the file

C-x C-w: Save file as


## Buffers

C-x C-b: List all buffers

C-x b <Buffer name>: Switch to the said buffer

C-x s: Save some buffers

C-x k: kill current buffer

C-x right/left: right/left cycle through buffers


## Search 

C-s: Incremental search from the cursor until end

C-r: Search from cursor until start

Hit enter to go forward occurances, <DEL> for backward

M-%: Query replace ('space'-replace, 'n'-skip, '!'-replace all)


## Help

C-h k: Help for key 'k'

C-h f: Help for command

C-h a: Search help for command or regexp


## Advanced features

M-x shell: Open terminal shell

C-u M-x shell: Open another shell but it will ask you to
    	       rename this one!

M-x man: Open man pages

M-x shell-command
