///|
test "upper_flat_case basic conversion" {
  assert_eq(@case.upper_flat_case("hello world"), "HELLOWORLD")
  assert_eq(@case.upper_flat_case("HelloWorld"), "HELLOWORLD")
  assert_eq(@case.upper_flat_case("hello_world"), "HELLOWORLD")
  assert_eq(@case.upper_flat_case("hello"), "HELLO")
}

///|
test "upper_flat_case edge cases" {
  assert_eq(@case.upper_flat_case(""), "")
  assert_eq(@case.upper_flat_case("a"), "A")
  assert_eq(@case.upper_flat_case("A"), "A")
  assert_eq(@case.upper_flat_case("123"), "123")
}

///|
test "upper_flat_case complex cases" {
  assert_eq(@case.upper_flat_case("XMLHttpRequest"), "XMLHTTPREQUEST")
  assert_eq(@case.upper_flat_case("iPhone-App"), "IPHONEAPP")
  assert_eq(@case.upper_flat_case("foo bar baz"), "FOOBARBAZ")
  assert_eq(@case.upper_flat_case("test123value"), "TEST123VALUE")
}
