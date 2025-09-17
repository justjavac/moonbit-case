///|
test "reverse_case basic conversion" {
  assert_eq(@case.reverse_case("hello"), "olleh")
  assert_eq(@case.reverse_case("hello world"), "dlrow olleh")
  assert_eq(@case.reverse_case("Test123"), "321tseT")
}

///|
test "reverse_case edge cases" {
  assert_eq(@case.reverse_case(""), "")
  assert_eq(@case.reverse_case("a"), "a")
  assert_eq(@case.reverse_case("ab"), "ba")
}

///|
test "reverse_case with symbols" {
  assert_eq(@case.reverse_case("hello-world"), "dlrow-olleh")
  assert_eq(@case.reverse_case("test_case"), "esac_tset")
  assert_eq(@case.reverse_case("!@#$%"), "%$#@!")
}
