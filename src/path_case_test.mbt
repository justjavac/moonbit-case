///|
test "path_case basic conversion" {
  assert_eq(@case.path_case("hello world"), "hello/world")
  assert_eq(@case.path_case("HelloWorld"), "hello/world")
  assert_eq(@case.path_case("hello_world"), "hello/world")
  assert_eq(@case.path_case("hello"), "hello")
}

///|
test "path_case edge cases" {
  assert_eq(@case.path_case(""), "")
  assert_eq(@case.path_case("a"), "a")
  assert_eq(@case.path_case("A"), "a")
  assert_eq(@case.path_case("123"), "123")
}

///|
test "path_case complex cases" {
  assert_eq(@case.path_case("XMLHttpRequest"), "xml/http/request")
  assert_eq(@case.path_case("iPhone-App"), "i/phone/app")
  assert_eq(@case.path_case("foo bar baz"), "foo/bar/baz")
  assert_eq(@case.path_case("test123value"), "test/123/value")
}
