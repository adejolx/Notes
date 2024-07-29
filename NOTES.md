# NOTES

## JS STUFF

### Debouncing

Resets the timer when the debounced fn is called with arguments.
The debounced fn is only executed when this is true

1. the debounced fn's arguments stop changing before the current timeout elapses

```jsx

    const debounce = (fn, delay) => {
        let timeoutId;
        return (...args) => {
            timeoutId = setTimeout(fn(...args), delay)
        }
    }
```

### Throttling

Unlike debounce, the timer isn't reset on every call to the throttled fn,
it is reset at intervals, and until the current interval elapses, the throttled
fn will not be executed

## DB STUFF

### PSQL - SELECT

Usage: `select <columns> from <table> where <condition>`

* Conditions can be in the form of string matching

    use any of `LIKE`, `ILIKE`, `NOT LIKE`, `NOT ILIKE` to match with `_` or `%`.

   `_` matches a character at that position in a string.

    The `%` matches zero or more occurences of a character.

    Usage: `... where first_name like '_at%'`

    selects rows where the `first_name` column matches `bat`, `catch`, `matches`

* Combining conditions with OR or AND

* Match NULL rows with `IS NULL` and non NULL rows with `IS NOT NULL`

* Order rows by a column in ASC or DESC order.

    By default it is in ascending (ASC) order.

    Usage: `select <column> from <table> order by <column> <order>`
