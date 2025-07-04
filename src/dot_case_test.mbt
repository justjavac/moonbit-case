///|
test "dot_case basic conversion" {
  assert_eq(dot_case("hello world"), "hello.world")
  assert_eq(dot_case("HelloWorld"), "hello.world")
  assert_eq(dot_case("hello_world"), "hello.world")
  assert_eq(dot_case("hello"), "hello")
}

///|
test "dot_case edge cases" {
  assert_eq(dot_case(""), "")
  assert_eq(dot_case("a"), "a")
  assert_eq(dot_case("A"), "a")
  assert_eq(dot_case("123"), "123")
}

///|
test "dot_case complex cases" {
  assert_eq(dot_case("XMLHttpRequest"), "xml.http.request")
  assert_eq(dot_case("iPhone-App"), "i.phone.app")
  assert_eq(dot_case("foo bar baz"), "foo.bar.baz")
  assert_eq(dot_case("test123value"), "test.123.value")
}
