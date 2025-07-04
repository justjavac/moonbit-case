///| Convert string to spongeCase (alternating capitalization).
/// 
/// Transforms the input string to spongeCase by alternating between lowercase
/// and uppercase for each letter, mimicking the "mocking SpongeBob" meme format.
/// Non-alphabetic characters are preserved as-is and don't affect the alternation.
/// 
/// Examples:
/// - spongeCase("hello world") returns "hElLo WoRlD"
/// - spongeCase("test string") returns "tEsT sTrInG"
/// - spongeCase("hello") returns "hElLo"
/// - spongeCase("test123value") returns "tEsT123vAlUe"
/// - spongeCase("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to transform
/// 
/// # Returns
/// The string with alternating case applied
pub fn spongeCase(text : String) -> String {
  let chars = text.to_array()
  let mut result = ""
  let mut should_uppercase = false
  for i = 0; i < chars.length(); i = i + 1 {
    let char = chars[i]
    if is_letter(char) {
      if should_uppercase {
        result = result + to_uppercase(char).to_string()
      } else {
        result = result + to_lowercase(char).to_string()
      }
      should_uppercase = not(should_uppercase)
    } else {
      result = result + char.to_string()
    }
  }
  result
}

///|
test "spongeCase basic conversion" {
  assert_eq(spongeCase("hello world"), "hElLo WoRlD")
  assert_eq(spongeCase("test string"), "tEsT sTrInG")
  assert_eq(spongeCase("hello"), "hElLo")
}

///|
test "spongeCase edge cases" {
  assert_eq(spongeCase(""), "")
  assert_eq(spongeCase("123"), "123")
  assert_eq(spongeCase("!@#"), "!@#")
  assert_eq(spongeCase("a"), "a")
  assert_eq(spongeCase("ab"), "aB")
}

///|
test "spongeCase with mixed content" {
  assert_eq(spongeCase("test123value"), "tEsT123vAlUe")
  assert_eq(spongeCase("hello-world"), "hElLo-WoRlD")
  assert_eq(spongeCase("a1b2c3"), "a1B2c3")
}
