///|
/// Convert a string to space-separated lowercase text.
///
/// This is the normalized representation used internally by several case
/// converters when separators and original casing should be discarded.
///
/// # Example
///
/// ```mbt check
/// test "no_case doc example" {
///   assert_eq(no_case("HelloWorld"), "hello world")
///   assert_eq(no_case("test123value"), "test 123 value")
///   assert_eq(no_case(""), "")
/// }
/// ```
pub fn no_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = string_to_lower(words[0])
  for i = 1; i < words.length(); i = i + 1 {
    result = result + " " + string_to_lower(words[i])
  }
  result
}
