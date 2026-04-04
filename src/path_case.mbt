///|
/// Convert a string to `path/case`.
///
/// Lowercase words are joined with `/`, which is useful when mapping names to
/// route segments or hierarchical resource paths.
///
/// # Example
///
/// ```mbt check
/// test "path_case doc example" {
///   assert_eq(path_case("hello world"), "hello/world")
///   assert_eq(path_case("XMLHttpRequest"), "xml/http/request")
///   assert_eq(path_case(""), "")
/// }
/// ```
pub fn path_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = string_to_lower(words[0])
  for i = 1; i < words.length(); i = i + 1 {
    result = result + "/" + string_to_lower(words[i])
  }
  result
}
