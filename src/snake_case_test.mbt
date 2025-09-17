///|
test "snake_case basic conversion" {
  assert_eq(@case.snake_case("hello world"), "hello_world")
  assert_eq(@case.snake_case("HelloWorld"), "hello_world")
  assert_eq(@case.snake_case("hello-world"), "hello_world")
  assert_eq(@case.snake_case("hello"), "hello")
}

///|
test "snake_case edge cases" {
  assert_eq(@case.snake_case(""), "")
  assert_eq(@case.snake_case("a"), "a")
  assert_eq(@case.snake_case("A"), "a")
  assert_eq(@case.snake_case("123"), "123")
}

///|
test "snake_case complex cases" {
  assert_eq(@case.snake_case("XMLHttpRequest"), "xml_http_request")
  assert_eq(@case.snake_case("iPhone-App"), "i_phone_app")
  assert_eq(@case.snake_case("foo bar baz"), "foo_bar_baz")
  assert_eq(@case.snake_case("test123value"), "test_123_value")
}
