///|
test "camel_case basic conversion" {
  assert_eq(@case.camel_case("hello world"), "helloWorld")
  assert_eq(@case.camel_case("Hello-World"), "helloWorld")
  assert_eq(@case.camel_case("HELLO_WORLD"), "helloWorld")
  assert_eq(@case.camel_case("hello"), "hello")
}

///|
test "camel_case edge cases" {
  assert_eq(@case.camel_case(""), "")
  assert_eq(@case.camel_case("a"), "a")
  assert_eq(@case.camel_case("A"), "a")
  assert_eq(@case.camel_case("123"), "123")
}

///|
test "camel_case complex cases" {
  assert_eq(@case.camel_case("XMLHttpRequest"), "xmlHttpRequest")
  assert_eq(@case.camel_case("iPhone-App"), "iPhoneApp")
  assert_eq(@case.camel_case("foo_bar_baz"), "fooBarBaz")
  assert_eq(@case.camel_case("test123value"), "test123Value")
}
