///|
/// Swap the case of each letter in a string.
///
/// Uppercase ASCII letters become lowercase, lowercase ASCII letters become
/// uppercase, and every other character is copied unchanged.
///
/// # Example
///
/// ```mbt check
/// test "swap_case doc example" {
///   assert_eq(swap_case("Hello World"), "hELLO wORLD")
///   assert_eq(swap_case("snake_case"), "SNAKE_CASE")
///   assert_eq(swap_case(""), "")
/// }
/// ```
pub fn swap_case(text : String) -> String {
  let chars = text.to_array()
  let mut result = ""
  for i = 0; i < chars.length(); i = i + 1 {
    let char = chars[i]
    if is_uppercase(char) {
      result = result + to_lowercase(char).to_string()
    } else if is_lowercase(char) {
      result = result + to_uppercase(char).to_string()
    } else {
      result = result + char.to_string()
    }
  }
  result
}
