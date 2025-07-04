///|
test "no_case basic conversion" {
  assert_eq(no_case("hello world"), "hello world")
  assert_eq(no_case("HelloWorld"), "hello world")
  assert_eq(no_case("hello_world"), "hello world")
  assert_eq(no_case("hello"), "hello")
}

///|
test "no_case edge cases" {
  assert_eq(no_case(""), "")
  assert_eq(no_case("a"), "a")
  assert_eq(no_case("A"), "a")
  assert_eq(no_case("123"), "123")
}

///|
test "no_case complex cases" {
  assert_eq(no_case("XMLHttpRequest"), "xml http request")
  assert_eq(no_case("iPhone-App"), "i phone app")
  assert_eq(no_case("foo bar baz"), "foo bar baz")
  assert_eq(no_case("test123value"), "test 123 value")
}
