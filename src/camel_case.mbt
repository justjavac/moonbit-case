///|
/// Convert a string to `camelCase`.
///
/// Word boundaries are detected from separators, case transitions, and
/// letter-digit boundaries before the result is joined without separators.
///
/// # Example
///
/// ```mbt check
/// test "camel_case doc example" {
///   assert_eq(camel_case("hello world"), "helloWorld")
///   assert_eq(camel_case("XMLHttpRequest"), "xmlHttpRequest")
///   assert_eq(camel_case("test123value"), "test123Value")
/// }
/// ```
pub fn camel_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = string_to_lower(words[0])
  for i = 1; i < words.length(); i = i + 1 {
    result = result + capitalize(string_to_lower(words[i]))
  }
  result
}
