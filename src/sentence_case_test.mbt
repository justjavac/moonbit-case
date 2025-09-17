///|
test "sentence_case basic conversion" {
  assert_eq(@case.sentence_case("hello world"), "Hello world")
  assert_eq(@case.sentence_case("HelloWorld"), "Hello world")
  assert_eq(@case.sentence_case("hello_world"), "Hello world")
  assert_eq(@case.sentence_case("hello"), "Hello")
}

///|
test "sentence_case edge cases" {
  assert_eq(@case.sentence_case(""), "")
  assert_eq(@case.sentence_case("a"), "A")
  assert_eq(@case.sentence_case("A"), "A")
  assert_eq(@case.sentence_case("123"), "123")
}

///|
test "sentence_case complex cases" {
  assert_eq(@case.sentence_case("XMLHttpRequest"), "Xml http request")
  assert_eq(@case.sentence_case("iPhone-App"), "I phone app")
  assert_eq(@case.sentence_case("foo bar baz"), "Foo bar baz")
  assert_eq(@case.sentence_case("test123value"), "Test 123 value")
}
