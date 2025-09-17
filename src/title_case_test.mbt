///|
test "title_case basic conversion" {
  assert_eq(@case.title_case("the quick brown fox"), "The Quick Brown Fox")
  assert_eq(@case.title_case("a tale of two cities"), "A Tale of Two Cities")
  assert_eq(@case.title_case("hello world"), "Hello World")
}

///|
test "title_case edge cases" {
  assert_eq(@case.title_case(""), "")
  assert_eq(@case.title_case("a"), "A")
  assert_eq(@case.title_case("the"), "The")
}

///|
test "title_case with minor words" {
  assert_eq(@case.title_case("war and peace"), "War and Peace")
  assert_eq(@case.title_case("the lord of the rings"), "The Lord of the Rings")
  assert_eq(@case.title_case("to be or not to be"), "To Be or Not to Be")
}
