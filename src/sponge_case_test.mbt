///|
test "sponge_case basic conversion" {
  assert_eq(sponge_case("hello world"), "hElLo WoRlD")
  assert_eq(sponge_case("test string"), "tEsT sTrInG")
  assert_eq(sponge_case("hello"), "hElLo")
}

///|
test "sponge_case edge cases" {
  assert_eq(sponge_case(""), "")
  assert_eq(sponge_case("123"), "123")
  assert_eq(sponge_case("!@#"), "!@#")
  assert_eq(sponge_case("a"), "a")
  assert_eq(sponge_case("ab"), "aB")
}

///|
test "sponge_case with mixed content" {
  assert_eq(sponge_case("test123value"), "tEsT123vAlUe")
  assert_eq(sponge_case("hello-world"), "hElLo-WoRlD")
  assert_eq(sponge_case("a1b2c3"), "a1B2c3")
}
