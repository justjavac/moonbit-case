// Tests for utils module

///|
test "split basic words" {
  assert_eq(split("hello world"), ["hello", "world"])
  assert_eq(split("test string here"), ["test", "string", "here"])
}

///|
test "split camelCase" {
  assert_eq(split("camelCase"), ["camel", "Case"])
  assert_eq(split("XMLHttpRequest"), ["XML", "Http", "Request"])
  assert_eq(split("iPhone"), ["i", "Phone"])
}

///|
test "split snake_case" {
  assert_eq(split("snake_case"), ["snake", "case"])
  assert_eq(split("hello_world_test"), ["hello", "world", "test"])
}

///|
test "split kebab-case" {
  assert_eq(split("kebab-case"), ["kebab", "case"])
  assert_eq(split("hello-world-test"), ["hello", "world", "test"])
}

///|
test "split with numbers" {
  assert_eq(split("test123value"), ["test", "123", "value"])
  assert_eq(split("version1.2.3"), ["version", "1", "2", "3"])
}

///|
test "split edge cases" {
  assert_eq(split(""), [])
  assert_eq(split("single"), ["single"])
  assert_eq(split("ALLCAPS"), ["ALLCAPS"])
}

///|
test "string_to_upper" {
  assert_eq(string_to_upper("hello"), "HELLO")
  assert_eq(string_to_upper("Hello World"), "HELLO WORLD")
  assert_eq(string_to_upper("test123"), "TEST123")
}

///|
test "string_to_lower" {
  assert_eq(string_to_lower("HELLO"), "hello")
  assert_eq(string_to_lower("Hello World"), "hello world")
  assert_eq(string_to_lower("TEST123"), "test123")
}

///|
test "capitalize" {
  assert_eq(capitalize("hello"), "Hello")
  assert_eq(capitalize("HELLO"), "HELLO")
  assert_eq(capitalize("test"), "Test")
  assert_eq(capitalize(""), "")
}
