///|
test "pascal_case basic conversion" {
  assert_eq(@case.pascal_case("hello world"), "HelloWorld")
  assert_eq(@case.pascal_case("hello-world"), "HelloWorld")
  assert_eq(@case.pascal_case("HELLO_WORLD"), "HelloWorld")
  assert_eq(@case.pascal_case("hello"), "Hello")
}

///|
test "pascal_case edge cases" {
  assert_eq(@case.pascal_case(""), "")
  assert_eq(@case.pascal_case("a"), "A")
  assert_eq(@case.pascal_case("A"), "A")
  assert_eq(@case.pascal_case("123"), "123")
}

///|
test "pascal_case complex cases" {
  assert_eq(@case.pascal_case("XMLHttpRequest"), "XmlHttpRequest")
  assert_eq(@case.pascal_case("iPhone-app"), "IPhoneApp")
  assert_eq(@case.pascal_case("foo_bar_baz"), "FooBarBaz")
  assert_eq(@case.pascal_case("test123value"), "Test123Value")
}
