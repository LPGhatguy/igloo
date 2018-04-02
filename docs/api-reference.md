# API Reference

## Constants

### Immute.None
Represents a value that is intentionally present, but should be interpreted
as `nil`.

Immute.None is used by included utilities to make removing values more
ergonomic.

## Dictionary
Defines utilities for working with 'dictionary-like' tables.

Dictionaries can be indexed by any value, but don't have the ordering
expectations that lists have.

### join
```
Immute.Dictionary.join(...dictionaries) -> dictionary
```

Combine a number of dictionary-like tables into a new table.

Keys specified in later tables will overwrite keys in previous tables.

Use `Immute.None` as a value to remove a value. This is necessary because
Lua does not distinguish between a value not being present in a table and a
value being `nil`.