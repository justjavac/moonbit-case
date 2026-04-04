///|
/// Convert a string to `snake_case`.
///
/// Lowercase words are joined with underscores after the input has been split
/// on separators, case transitions, and number boundaries.
///
/// # Example
///
/// ```mbt check
/// test "snake_case doc example" {
///   assert_eq(snake_case("hello world"), "hello_world")
///   assert_eq(snake_case("test123value"), "test_123_value")
///   assert_eq(snake_case(""), "")
/// }
/// ```
pub fn snake_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = string_to_lower(words[0])
  for i = 1; i < words.length(); i = i + 1 {
    result = result + "_" + string_to_lower(words[i])
  }
  result
}
