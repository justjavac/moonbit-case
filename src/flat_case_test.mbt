///|
test "flat_case basic conversion" {
  assert_eq(@case.flat_case("hello world"), "helloworld")
  assert_eq(@case.flat_case("HelloWorld"), "helloworld")
  assert_eq(@case.flat_case("hello_world"), "helloworld")
  assert_eq(@case.flat_case("hello"), "hello")
}

///|
test "flat_case edge cases" {
  assert_eq(@case.flat_case(""), "")
  assert_eq(@case.flat_case("a"), "a")
  assert_eq(@case.flat_case("A"), "a")
  assert_eq(@case.flat_case("123"), "123")
}

///|
test "flat_case complex cases" {
  assert_eq(@case.flat_case("XMLHttpRequest"), "xmlhttprequest")
  assert_eq(@case.flat_case("iPhone-App"), "iphoneapp")
  assert_eq(@case.flat_case("foo bar baz"), "foobarbaz")
  assert_eq(@case.flat_case("test123value"), "test123value")
}
