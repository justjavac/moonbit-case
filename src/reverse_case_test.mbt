///|
test "reverse_case basic conversion" {
  assert_eq(reverse_case("hello"), "olleh")
  assert_eq(reverse_case("hello world"), "dlrow olleh")
  assert_eq(reverse_case("Test123"), "321tseT")
}

///|
test "reverse_case edge cases" {
  assert_eq(reverse_case(""), "")
  assert_eq(reverse_case("a"), "a")
  assert_eq(reverse_case("ab"), "ba")
}

///|
test "reverse_case with symbols" {
  assert_eq(reverse_case("hello-world"), "dlrow-olleh")
  assert_eq(reverse_case("test_case"), "esac_tset")
  assert_eq(reverse_case("!@#$%"), "%$#@!")
}
