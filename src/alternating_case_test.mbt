///|
test "alternating_case basic conversion" {
  assert_eq(alternating_case("hello"), "hElLo")
  assert_eq(alternating_case("hello world"), "hElLo WoRlD")
  assert_eq(alternating_case("test123"), "tEsT123")
}

///|
test "alternating_case edge cases" {
  assert_eq(alternating_case(""), "")
  assert_eq(alternating_case("123"), "123")
  assert_eq(alternating_case("!@#"), "!@#")
  assert_eq(alternating_case("a"), "a")
  assert_eq(alternating_case("ab"), "aB")
}

///|
test "alternating_case with symbols" {
  assert_eq(alternating_case("a-b-c"), "a-B-c")
  assert_eq(alternating_case("test_case"), "tEsT_cAsE")
  assert_eq(alternating_case("hello123world"), "hElLo123WoRlD")
}
