///|
/// Convert a string to `UPPERFLATCASE`.
///
/// Uppercased words are joined without separators, which can be useful for
/// legacy identifiers, short codes, and compact labels.
///
/// # Example
///
/// ```mbt check
/// test "upper_flat_case doc example" {
///   assert_eq(upper_flat_case("hello world"), "HELLOWORLD")
///   assert_eq(upper_flat_case("iPhone-App"), "IPHONEAPP")
///   assert_eq(upper_flat_case(""), "")
/// }
/// ```
pub fn upper_flat_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = string_to_upper(words[0])
  for i = 1; i < words.length(); i = i + 1 {
    result = result + string_to_upper(words[i])
  }
  result
}
