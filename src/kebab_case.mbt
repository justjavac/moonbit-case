///|
/// Convert a string to `kebab-case`.
///
/// The result uses lowercase words separated by hyphens, making it a good fit
/// for URLs, slugs, and CLI-friendly identifiers.
///
/// # Example
///
/// ```mbt check
/// test "kebab_case doc example" {
///   assert_eq(kebab_case("hello world"), "hello-world")
///   assert_eq(kebab_case("XMLHttpRequest"), "xml-http-request")
///   assert_eq(kebab_case(""), "")
/// }
/// ```
pub fn kebab_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = string_to_lower(words[0])
  for i = 1; i < words.length(); i = i + 1 {
    result = result + "-" + string_to_lower(words[i])
  }
  result
}
