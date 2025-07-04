///|
test "swap_case basic conversion" {
  assert_eq(swap_case("Hello World"), "hELLO wORLD")
  assert_eq(swap_case("hELLO wORLD"), "Hello World")
  assert_eq(swap_case("Test123"), "tEST123")
  assert_eq(swap_case("hello"), "HELLO")
}

///|
test "swap_case edge cases" {
  assert_eq(swap_case(""), "")
  assert_eq(swap_case("123"), "123")
  assert_eq(swap_case("!@#"), "!@#")
  assert_eq(swap_case("A"), "a")
  assert_eq(swap_case("a"), "A")
}

///|
test "swap_case mixed cases" {
  assert_eq(swap_case("CamelCase"), "cAMELcASE")
  assert_eq(swap_case("snake_case"), "SNAKE_CASE")
  assert_eq(swap_case("kebab-case"), "KEBAB-CASE")
}
