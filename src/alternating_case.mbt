///|
/// Convert a string to alternating case.
///
/// Letters are rewritten one by one as lower, upper, lower, upper, while
/// separators and digits stay unchanged and do not reset the alternation.
///
/// # Example
///
/// ```mbt check
/// test "alternating_case doc example" {
///   assert_eq(alternating_case("hello world"), "hElLo WoRlD")
///   assert_eq(alternating_case("hello123world"), "hElLo123WoRlD")
///   assert_eq(alternating_case(""), "")
/// }
/// ```
pub fn alternating_case(text : String) -> String {
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
