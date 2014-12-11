emacs.d
=======

My personal emacs configures

Installation
------------

```script
 $ cd ~
 $ git clone https://github.com/liwenzhu/emacs.d.git .emacs.d 
```

KeyBindings
-----------

`C-c y` Enable snippets.

`C-c a` Enable auto-complete.

`C-c C-n` Mark next work as selected and enable multiple cursors.

`C-c =` Expand region.

`C-c C-d` add a block comment of stars.

Refactorings
------------

All commands are start with "C-c C-m":

 * `ef` is `extract-function`: Extracts the marked expressions out into a new named function.
 * `em` is `extract-method`: Extracts the marked expressions out into a new named method in an object literal.
 * `ip` is `introduce-parameter`: Changes the marked expression to a parameter in a local function.
 * `lp` is `localize-parameter`: Changes a parameter to a local var in a local function.
 * `eo` is `expand-object`: Converts a one line object literal to multiline.
 * `co` is `contract-object`: Converts a multiline object literal to one line.
 * `eu` is `expand-function`: Converts a one line function to multiline (expecting semicolons as statement delimiters).
 * `cu` is `contract-function`: Converts a multiline function to one line (expecting semicolons as statement delimiters).
 * `ea` is `expand-array`: Converts a one line array to multiline.
 * `ca` is `contract-array`: Converts a multiline array to one line.
 * `wi` is `wrap-buffer-in-iife`: Wraps the entire buffer in an immediately invoked function expression
 * `ig` is `inject-global-in-iife`: Creates a shortcut for a marked global by injecting it in the wrapping immediately invoked function expression
 * `ag` is `add-to-globals-annotation`: Creates a `/*global */` annotation if it is missing, and adds the var at point to it.
 * `ev` is `extract-var`: Takes a marked expression and replaces it with a var.
 * `iv` is `inline-var`: Replaces all instances of a variable with its initial value.
 * `rv` is `rename-var`: Renames the variable on point and all occurrences in its lexical scope.
 * `vt` is `var-to-this`: Changes local `var a` to be `this.a` instead.
 * `ao` is `arguments-to-object`: Replaces arguments to a function call with an object literal of named arguments.
 * `3i` is `ternary-to-if`: Converts ternary operator to if-statement.
 * `sv` is `split-var-declaration`: Splits a `var` with multiple vars declared, into several `var` statements.
 * `ss` is `split-string`: Splits a `string`.
 * `uw` is `unwrap`: Replaces the parent statement with the selected region.
 * `lt` is `log-this`: Adds a console.log statement for what is at point (or region).
 * `sl` is `forward-slurp`: Moves the next statement into current function, if-statement, for-loop or while-loop.
 * `ba` is `forward-barf`: Moves the last child out of current function, if-statement, for-loop or while-loop.
 * `k` is `kill`: Kills to the end of the line, but does not cross semantic boundaries.
