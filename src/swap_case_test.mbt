///|
test "swap_case basic conversion" {
  assert_eq(@case.swap_case("Hello World"), "hELLO wORLD")
  assert_eq(@case.swap_case("hELLO wORLD"), "Hello World")
  assert_eq(@case.swap_case("Test123"), "tEST123")
  assert_eq(@case.swap_case("hello"), "HELLO")
}

///|
test "swap_case edge cases" {
  assert_eq(@case.swap_case(""), "")
  assert_eq(@case.swap_case("123"), "123")
  assert_eq(@case.swap_case("!@#"), "!@#")
  assert_eq(@case.swap_case("A"), "a")
  assert_eq(@case.swap_case("a"), "A")
}

///|
test "swap_case mixed cases" {
  assert_eq(@case.swap_case("CamelCase"), "cAMELcASE")
  assert_eq(@case.swap_case("snake_case"), "SNAKE_CASE")
  assert_eq(@case.swap_case("kebab-case"), "KEBAB-CASE")
}
