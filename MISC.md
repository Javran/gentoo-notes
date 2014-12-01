# Something that too short to be fit into a directory

## Vimperator

Use key `I` to add the current website to the ignore list.
Vimperator will be disabled automatically on these sites

## xdg-open

use `xdg-mime` to set the default application

    xdg-mime default firefox-bin.desktop x-scheme-handler/http
    xdg-mime default firefox-bin.desktop x-scheme-handler/https

## *NIX scripts

There is an upper bound limit on how many command line
arguments you can have on one program.
If you are giving too many arguments to xargs, it
will try to split the arguements and run the provided
program multiple times.

### find

The following two commands have totally different meanings:

    # execute <command> on every single thing found by "find"
    find <whatever> -exec <command> ;

    # execute <command> after collecting everything "find" has found
    find <whatever> -exec <command> {} +
