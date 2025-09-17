///|
test "sponge_case basic conversion" {
  assert_eq(@case.sponge_case("hello world"), "hElLo WoRlD")
  assert_eq(@case.sponge_case("test string"), "tEsT sTrInG")
  assert_eq(@case.sponge_case("hello"), "hElLo")
}

///|
test "sponge_case edge cases" {
  assert_eq(@case.sponge_case(""), "")
  assert_eq(@case.sponge_case("123"), "123")
  assert_eq(@case.sponge_case("!@#"), "!@#")
  assert_eq(@case.sponge_case("a"), "a")
  assert_eq(@case.sponge_case("ab"), "aB")
}

///|
test "sponge_case with mixed content" {
  assert_eq(@case.sponge_case("test123value"), "tEsT123vAlUe")
  assert_eq(@case.sponge_case("hello-world"), "hElLo-WoRlD")
  assert_eq(@case.sponge_case("a1b2c3"), "a1B2c3")
}
