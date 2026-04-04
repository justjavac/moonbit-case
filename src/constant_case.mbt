///|
/// Convert a string to `CONSTANT_CASE`.
///
/// This is the uppercased form of `snake_case`, which is useful for constant
/// names, environment variables, and similar identifier styles.
///
/// # Example
///
/// ```mbt check
/// test "constant_case doc example" {
///   assert_eq(constant_case("hello world"), "HELLO_WORLD")
///   assert_eq(constant_case("iPhone-App"), "I_PHONE_APP")
///   assert_eq(constant_case(""), "")
/// }
/// ```
pub fn constant_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = string_to_upper(words[0])
  for i = 1; i < words.length(); i = i + 1 {
    result = result + "_" + string_to_upper(words[i])
  }
  result
}
