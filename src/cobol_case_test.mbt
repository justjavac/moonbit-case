///|
test "cobol_case basic conversion" {
  assert_eq(@case.cobol_case("hello world"), "HELLO-WORLD")
  assert_eq(@case.cobol_case("HelloWorld"), "HELLO-WORLD")
  assert_eq(@case.cobol_case("hello_world"), "HELLO-WORLD")
  assert_eq(@case.cobol_case("hello"), "HELLO")
}

///|
test "cobol_case edge cases" {
  assert_eq(@case.cobol_case(""), "")
  assert_eq(@case.cobol_case("a"), "A")
  assert_eq(@case.cobol_case("A"), "A")
  assert_eq(@case.cobol_case("123"), "123")
}

///|
test "cobol_case complex cases" {
  assert_eq(@case.cobol_case("XMLHttpRequest"), "XML-HTTP-REQUEST")
  assert_eq(@case.cobol_case("iPhone-App"), "I-PHONE-APP")
  assert_eq(@case.cobol_case("foo bar baz"), "FOO-BAR-BAZ")
  assert_eq(@case.cobol_case("test123value"), "TEST-123-VALUE")
}
