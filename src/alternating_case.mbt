///| Convert string to alternating case.
/// 
/// Transforms the input string by alternating between lowercase and uppercase
/// for each letter. Non-alphabetic characters are preserved as-is and don't
/// affect the alternation pattern.
/// 
/// Examples:
/// - alternatingCase("hello") returns "hElLo"
/// - alternatingCase("hello world") returns "hElLo WoRlD"
/// - alternatingCase("test123") returns "tEsT123"
/// - alternatingCase("hello123world") returns "hElLo123WoRlD"
/// - alternatingCase("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to transform
/// 
/// # Returns
/// The string with alternating case applied
pub fn alternatingCase(text : String) -> String {
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
test "alternatingCase basic conversion" {
  assert_eq(alternatingCase("hello"), "hElLo")
  assert_eq(alternatingCase("hello world"), "hElLo WoRlD")
  assert_eq(alternatingCase("test123"), "tEsT123")
}

///|
test "alternatingCase edge cases" {
  assert_eq(alternatingCase(""), "")
  assert_eq(alternatingCase("123"), "123")
  assert_eq(alternatingCase("!@#"), "!@#")
  assert_eq(alternatingCase("a"), "a")
  assert_eq(alternatingCase("ab"), "aB")
}

///|
test "alternatingCase with symbols" {
  assert_eq(alternatingCase("a-b-c"), "a-B-c")
  assert_eq(alternatingCase("test_case"), "tEsT_cAsE")
  assert_eq(alternatingCase("hello123world"), "hElLo123WoRlD")
}
