///|
test "kebab_case basic conversion" {
  assert_eq(kebab_case("hello world"), "hello-world")
  assert_eq(kebab_case("HelloWorld"), "hello-world")
  assert_eq(kebab_case("hello_world"), "hello-world")
  assert_eq(kebab_case("hello"), "hello")
}

///|
test "kebab_case edge cases" {
  assert_eq(kebab_case(""), "")
  assert_eq(kebab_case("a"), "a")
  assert_eq(kebab_case("A"), "a")
  assert_eq(kebab_case("123"), "123")
}

///|
test "kebab_case complex cases" {
  assert_eq(kebab_case("XMLHttpRequest"), "xml-http-request")
  assert_eq(kebab_case("iPhone-App"), "i-phone-app")
  assert_eq(kebab_case("foo bar baz"), "foo-bar-baz")
  assert_eq(kebab_case("test123value"), "test-123-value")
}
