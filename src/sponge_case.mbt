///|
/// Convert a string to `spongeCase`.
///
/// This uses the familiar alternating lowercase and uppercase pattern often
/// used for mocking text, while keeping non-letters untouched.
///
/// # Example
///
/// ```mbt check
/// test "sponge_case doc example" {
///   assert_eq(sponge_case("hello world"), "hElLo WoRlD")
///   assert_eq(sponge_case("test123value"), "tEsT123vAlUe")
///   assert_eq(sponge_case(""), "")
/// }
/// ```
pub fn sponge_case(text : String) -> String {
  let chars = text.to_array()
  let mut result = ""
  let mut should_uppercase = false
  for i = 0; i < chars.length(); i = i + 1 {
    let char = chars[i]
    if is_letter(char) {
      if should_uppercase {
        result = result + to_uppercase(char).to_string()
      } else {
        result = result + to_lowercase(char).to_string()
      }
      should_uppercase = !should_uppercase
    } else {
      result = result + char.to_string()
    }
  }
  result
}
