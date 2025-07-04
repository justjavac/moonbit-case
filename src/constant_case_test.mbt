///|
test "constant_case basic conversion" {
  assert_eq(constant_case("hello world"), "HELLO_WORLD")
  assert_eq(constant_case("HelloWorld"), "HELLO_WORLD")
  assert_eq(constant_case("hello-world"), "HELLO_WORLD")
  assert_eq(constant_case("hello"), "HELLO")
}

///|
test "constant_case edge cases" {
  assert_eq(constant_case(""), "")
  assert_eq(constant_case("a"), "A")
  assert_eq(constant_case("A"), "A")
  assert_eq(constant_case("123"), "123")
}

///|
test "constant_case complex cases" {
  assert_eq(constant_case("XMLHttpRequest"), "XML_HTTP_REQUEST")
  assert_eq(constant_case("iPhone-App"), "I_PHONE_APP")
  assert_eq(constant_case("foo bar baz"), "FOO_BAR_BAZ")
  assert_eq(constant_case("test123value"), "TEST_123_VALUE")
}
