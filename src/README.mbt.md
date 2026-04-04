# case

String case conversion helpers for MoonBit.

## Installation

```bash
moon update
moon add justjavac/case
```

## Common conversions

```mbt check
///|
test "common conversions" {
  assert_eq(@case.camel_case("hello world"), "helloWorld")
  assert_eq(@case.pascal_case("hello world"), "HelloWorld")
  assert_eq(@case.snake_case("hello world"), "hello_world")
  assert_eq(@case.kebab_case("hello world"), "hello-world")
  assert_eq(@case.constant_case("hello world"), "HELLO_WORLD")
}
```

## Display and utility styles

```mbt check
///|
test "display and utility styles" {
  assert_eq(@case.sentence_case("hello_world"), "Hello world")
  assert_eq(@case.title_case("the lord of the rings"), "The Lord of the Rings")
  assert_eq(
    @case.dot_case("databaseConnectionString"),
    "database.connection.string",
  )
  assert_eq(
    @case.path_case("databaseConnectionString"),
    "database/connection/string",
  )
  assert_eq(@case.swap_case("Hello World"), "hELLO wORLD")
  assert_eq(@case.reverse_case("hello"), "olleh")
}
```
