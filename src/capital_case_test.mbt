///|
test "capital_case basic conversion" {
  assert_eq(@case.capital_case("hello world"), "Hello World")
  assert_eq(@case.capital_case("HelloWorld"), "Hello World")
  assert_eq(@case.capital_case("hello_world"), "Hello World")
  assert_eq(@case.capital_case("hello"), "Hello")
}

///|
test "capital_case edge cases" {
  assert_eq(@case.capital_case(""), "")
  assert_eq(@case.capital_case("a"), "A")
  assert_eq(@case.capital_case("A"), "A")
  assert_eq(@case.capital_case("123"), "123")
}

///|
test "capital_case complex cases" {
  assert_eq(@case.capital_case("XMLHttpRequest"), "Xml Http Request")
  assert_eq(@case.capital_case("iPhone-App"), "I Phone App")
  assert_eq(@case.capital_case("foo bar baz"), "Foo Bar Baz")
  assert_eq(@case.capital_case("test123value"), "Test 123 Value")
}
