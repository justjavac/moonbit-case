///|
/// Convert a string to `Train-Case`.
///
/// Each word is capitalized and the result is joined with hyphens, which
/// matches styles commonly used by HTTP header names and labels.
///
/// # Example
///
/// ```mbt check
/// test "train_case doc example" {
///   assert_eq(train_case("hello world"), "Hello-World")
///   assert_eq(train_case("test123value"), "Test-123-Value")
///   assert_eq(train_case(""), "")
/// }
/// ```
pub fn train_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = capitalize(string_to_lower(words[0]))
  for i = 1; i < words.length(); i = i + 1 {
    result = result + "-" + capitalize(string_to_lower(words[i]))
  }
  result
}
