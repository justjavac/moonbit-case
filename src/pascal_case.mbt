///|
/// Convert a string to `PascalCase`.
///
/// Every detected word is capitalized and concatenated, which makes the result
/// suitable for type names and other UpperCamelCase identifiers.
///
/// # Example
///
/// ```mbt check
/// test "pascal_case doc example" {
///   assert_eq(pascal_case("hello world"), "HelloWorld")
///   assert_eq(pascal_case("test123value"), "Test123Value")
///   assert_eq(pascal_case(""), "")
/// }
/// ```
pub fn pascal_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = ""
  for i = 0; i < words.length(); i = i + 1 {
    result = result + capitalize(string_to_lower(words[i]))
  }
  result
}
