# justjavac/case

String case conversion helpers for MoonBit.

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

