# JavaScript, jQuery and things related

## Radio Button

### Setting a value programmatically

Setting up properties programmatically does not usually trigger change event,
but we can opt to trigger the event through program:

```javascript
$("input[type=radio]").prop("checked", true).change();
```

### Get Selected Value

Note that `:checked` is important.

```javascript
$("input[type=radio]:checked").val();
```

## Interoperation with PureScript

```purescript
data ZeroOrOne a = Zero | One a
```

```javascript
// for multiple fields, they are value0, value1, etc.
// uncurried.
function One(value0) {
    this.value0 = value0;
};

// curried.
One.create = function (value0) {
    return new One(value0);
};

function Zero() {
};

Zero.value = new Zero();
```

Also typeclass instances counts as parameter.
