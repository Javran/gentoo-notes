# block comment / line comment

line comment:

    -- | line/block comment
    --   comment

is equivalent to block comment:

    {- | line/block comment
         comment
    -}

# function document

Comment `-- |` starts a document for the lines below,
`-- ^` starts a document for the lines above:

    -- | a function
    aFunction :: a -> a

    aFunction :: a -> a
    -- ^ a function

can also be used on types / sum / etc.

    data Foo
        = Bar1 -- ^ 1
        | Bar2 -- ^ 2
        | Bar3 -- ^ 3

    compose :: (b -> c) -- ^ g
            -> (a -> b) -- ^ f
            -> (a -> c) -- ^ g . f (NOTE: keep the parentheses, see below)
    compose = (.)

Note that if the last line was `-> a -> c -- ^ document`,
the document would be attached to to `a` instead of `(a -> c)`.

# hyperlinked

Use single quote `'` to refer to identifiers. Full module path name is supported.

    -- | see the definition of 'Foo', 'Data.Map.Strict.fromList'
    foo :: Foo -> Foo
    foo = const Bar2

# examples

Leave a blank line right before the example block,
use `>>>` to start an example

    -- | identity function
    --
    -- >>> id 10
    -- 10

# code

Surround code with `@` (like quasiquote in markdown, but markup inside `@` still works,
this means you cannot use `"` to get string constants inside.)

    -- | this is a function
    --   @id 10 = 10@
    myId = id

Preceding each line with `>` for code block (the code block will be interpreted literally)

    -- | Fibonacci function
    -- > fib :: Int -> Int
    -- > fib n | n <= 1    = n
    -- >       | otherwise = f (n-1) + f (n-2)

# list items

Looks like markdown, but remember to put some empty lines as separators.

    {- | list items

    * item1

    * item2

    * item3

    or, you can have numbers

    1. item1

    2. item2

    3. item3

    nested:

        1. nested

            * use

            * 4

            * spaces

        2. nested example

    -}

# properties

Markup properties using `prop>`:

    -- | some properties
    -- prop> a + b = b + a

# see also

[haddock](http://www.haskell.org/haddock/doc/html/ch03s08.html)
