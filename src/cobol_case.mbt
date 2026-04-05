///|
/// Convert a string to `COBOL-CASE`.
///
/// This is the uppercased form of `kebab-case`, commonly seen in older
/// tooling, configuration formats, and integration layers.
///
/// # Example
///
/// ```mbt check
/// test "cobol_case doc example" {
///   assert_eq(cobol_case("hello world"), "HELLO-WORLD")
///   assert_eq(cobol_case("XMLHttpRequest"), "XML-HTTP-REQUEST")
///   assert_eq(cobol_case(""), "")
/// }
/// ```
pub fn cobol_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = string_to_upper(words[0])
  for i = 1; i < words.length(); i = i + 1 {
    result = result + "-" + string_to_upper(words[i])
  }
  result
}
