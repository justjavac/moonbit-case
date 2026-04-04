///|
/// Reverse the characters in a string.
///
/// The transformation keeps every character exactly as-is and only changes the
/// order, so casing and separators are preserved in reverse.
///
/// # Example
///
/// ```mbt check
/// test "reverse_case doc example" {
///   assert_eq(reverse_case("hello"), "olleh")
///   assert_eq(reverse_case("Test123"), "321tseT")
///   assert_eq(reverse_case(""), "")
/// }
/// ```
pub fn reverse_case(text : String) -> String {
  let chars = text.to_array()
  let mut result = ""
  for i = chars.length() - 1; i >= 0; i = i - 1 {
    result = result + chars[i].to_string()
  }
  result
}
