///| Reverse the order of characters in a string.
/// 
/// Transforms the input string by reversing the order of all characters,
/// effectively creating a mirror image of the original string.
/// 
/// Examples:
/// - reverseCase("hello") returns "olleh"
/// - reverseCase("hello world") returns "dlrow olleh"
/// - reverseCase("Test123") returns "321tseT"
/// - reverseCase("MoonBit") returns "tibnooM"
/// - reverseCase("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to reverse
/// 
/// # Returns
/// The string with characters in reverse order
pub fn reverseCase(text : String) -> String {
  let chars = text.to_array()
  let mut result = ""
  for i = chars.length() - 1; i >= 0; i = i - 1 {
    result = result + chars[i].to_string()
  }
  result
}

///|
test "reverseCase basic conversion" {
  assert_eq(reverseCase("hello"), "olleh")
  assert_eq(reverseCase("hello world"), "dlrow olleh")
  assert_eq(reverseCase("Test123"), "321tseT")
}

///|
test "reverseCase edge cases" {
  assert_eq(reverseCase(""), "")
  assert_eq(reverseCase("a"), "a")
  assert_eq(reverseCase("ab"), "ba")
}

///|
test "reverseCase with symbols" {
  assert_eq(reverseCase("hello-world"), "dlrow-olleh")
  assert_eq(reverseCase("test_case"), "esac_tset")
  assert_eq(reverseCase("!@#$%"), "%$#@!")
}
