# Vimtutor notes

## Navigation

h -- go left

j -- go down

k -- go up

l -- go right


## Inserting

i -- insert text here

a -- append after cursor

A -- append after end of line

ESC -- will exit current mode and go back to Normal mode
Saving files

:w -- write (save) the file

:wq -- write and quit

:q! -- force quit


## Deletion

x -- To delete current charachter under cursor

dw -- To delete current word under cursor

de -- delete upto end of word (d stands for delete)

dd -- delete the whole line (kind of like CUT)

d0 -- delete upto start of line

d$ -- delete upto end of line


## Operators

Operators can be combined with the motion keys to produce different kinds of commands. One guess what the motion keys are from the commands below. Add a number in between to repeat the command.

A -- append at the end of sentence

c -- Change until (-e:endOfWord, -$:endofSent etc..)

r -- Replace key (just a char)

R -- Replace entire sequence (not just a char)

p -- Put prev deleted text after cursor

[num]+motion -- Will repeat it [num] times

Can combine it with an operator before.


## Undo

u -- undo the previous command executed

U -- fix the whole line as it was

[Ctrl-R] -- undo the undos
Cursor and File

Ctrl+G -- Show file loction

G/gg -- Take cursor to bottom/start of file

[line-num]+G -- goto line when ctrl+g was pressed


## Misc

'/' followed by text to search

:! followed by external command to executS

o : open a new line after cursor and INSERT mode

v : Go into VISUAL mode (for copy etc...)

y : copy text highlighted in Visual mode

p : paste the copied text

:help : In built help for a command

"+y : copy to clipboard (only works if it was complied with the clipboard functionality)
