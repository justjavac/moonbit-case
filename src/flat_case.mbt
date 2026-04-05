///|
/// Convert a string to `flatcase`.
///
/// Lowercased words are joined without separators, which is useful when a
/// compact identifier should discard original boundaries.
///
/// # Example
///
/// ```mbt check
/// test "flat_case doc example" {
///   assert_eq(flat_case("hello world"), "helloworld")
///   assert_eq(flat_case("test123value"), "test123value")
///   assert_eq(flat_case(""), "")
/// }
/// ```
pub fn flat_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = string_to_lower(words[0])
  for i = 1; i < words.length(); i = i + 1 {
    result = result + string_to_lower(words[i])
  }
  result
}
