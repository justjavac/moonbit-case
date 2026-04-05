# justjavac/case

[![CI](https://github.com/justjavac/moonbit-case/actions/workflows/ci.yml/badge.svg)](https://github.com/justjavac/moonbit-case/actions/workflows/ci.yml)
[![coverage](https://img.shields.io/codecov/c/github/justjavac/moonbit-case/main?label=coverage)](https://codecov.io/gh/justjavac/moonbit-case)

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
