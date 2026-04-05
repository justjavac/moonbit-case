///|
/// Convert a string to `Ada_Case`.
///
/// Each word is capitalized and joined with underscores, which matches naming
/// styles used in Ada code and some generated identifiers.
///
/// # Example
///
/// ```mbt check
/// test "ada_case doc example" {
///   assert_eq(ada_case("hello world"), "Hello_World")
///   assert_eq(ada_case("test123value"), "Test_123_Value")
///   assert_eq(ada_case(""), "")
/// }
/// ```
pub fn ada_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = capitalize(string_to_lower(words[0]))
  for i = 1; i < words.length(); i = i + 1 {
    result = result + "_" + capitalize(string_to_lower(words[i]))
  }
  result
}
