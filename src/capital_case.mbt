///|
/// Convert a string to `Capital Case`.
///
/// Each detected word is lowercased first and then capitalized so the output
/// uses spaces between words and a stable presentation style.
///
/// # Example
///
/// ```mbt check
/// test "capital_case doc example" {
///   assert_eq(capital_case("hello_world"), "Hello World")
///   assert_eq(capital_case("XMLHttpRequest"), "Xml Http Request")
///   assert_eq(capital_case(""), "")
/// }
/// ```
pub fn capital_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = capitalize(string_to_lower(words[0]))
  for i = 1; i < words.length(); i = i + 1 {
    result = result + " " + capitalize(string_to_lower(words[i]))
  }
  result
}
