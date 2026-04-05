///|
test "ada_case basic conversion" {
  assert_eq(@case.ada_case("hello world"), "Hello_World")
  assert_eq(@case.ada_case("hello-world"), "Hello_World")
  assert_eq(@case.ada_case("HELLO_WORLD"), "Hello_World")
  assert_eq(@case.ada_case("hello"), "Hello")
}

///|
test "ada_case edge cases" {
  assert_eq(@case.ada_case(""), "")
  assert_eq(@case.ada_case("a"), "A")
  assert_eq(@case.ada_case("A"), "A")
  assert_eq(@case.ada_case("123"), "123")
}

///|
test "ada_case complex cases" {
  assert_eq(@case.ada_case("XMLHttpRequest"), "Xml_Http_Request")
  assert_eq(@case.ada_case("iPhone-app"), "I_Phone_App")
  assert_eq(@case.ada_case("foo_bar_baz"), "Foo_Bar_Baz")
  assert_eq(@case.ada_case("test123value"), "Test_123_Value")
}
