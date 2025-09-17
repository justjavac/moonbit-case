///|
test "train_case basic conversion" {
  assert_eq(@case.train_case("hello world"), "Hello-World")
  assert_eq(@case.train_case("HelloWorld"), "Hello-World")
  assert_eq(@case.train_case("hello_world"), "Hello-World")
  assert_eq(@case.train_case("hello"), "Hello")
}

///|
test "train_case edge cases" {
  assert_eq(@case.train_case(""), "")
  assert_eq(@case.train_case("a"), "A")
  assert_eq(@case.train_case("A"), "A")
  assert_eq(@case.train_case("123"), "123")
}

///|
test "train_case complex cases" {
  assert_eq(@case.train_case("XMLHttpRequest"), "Xml-Http-Request")
  assert_eq(@case.train_case("iPhone-App"), "I-Phone-App")
  assert_eq(@case.train_case("foo bar baz"), "Foo-Bar-Baz")
  assert_eq(@case.train_case("test123value"), "Test-123-Value")
}
