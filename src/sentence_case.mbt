///|
/// Convert a string to sentence case.
///
/// The first word is capitalized, later words are lowercased, and words are
/// rejoined with spaces for plain-language display.
///
/// # Example
///
/// ```mbt check
/// test "sentence_case doc example" {
///   assert_eq(sentence_case("hello_world"), "Hello world")
///   assert_eq(sentence_case("XMLHttpRequest"), "Xml http request")
///   assert_eq(sentence_case(""), "")
/// }
/// ```
pub fn sentence_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = capitalize(string_to_lower(words[0]))
  for i = 1; i < words.length(); i = i + 1 {
    result = result + " " + string_to_lower(words[i])
  }
  result
}
