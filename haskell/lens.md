Some typical usage of `Control.Lens` module.

For tuples, `_1` .. `_9` are accessors.

    > (1,(2,3,4),(5,6,(7,8))) ^. _1
    1
    > (1,(2,3,4),(5,6,(7,8))) ^. _2
    (2,3,4)

Use `.~` to replace the corresponding part with a new value.

    > _1 .~ "WOW" $ (undefined,2)
    ("WOW",2)

Can be composed because they are functions
(note here the modifiers are applied from right to left).

    > (_1 .~ "WOW") . (_1 .~ "such") $ (undefined,2)
    ("WOW",2)

We can use `%~` together with an accessor and a modifier.

    > ix 2 %~ (+ 20) $ [1,2,3]
    [1,2,23]

Compose accessors from left to right to go deeper:

    > (ix 1 . ix 0) %~ (+ 10) $ [ [1,2,3], [4,5,6] ]
    [[1,2,3],[14,5,6]]

    > (ix 1 . ix 0 . _1) %~ (++ "A") $ [[],[("DCB",123),("AAA",111)]]
    [[],[("DCBA",123),("AAA",111)]]
