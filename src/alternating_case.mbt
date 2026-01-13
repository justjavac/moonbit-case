///|
/// Convert string to alternating case.
/// 
/// Transforms the input string by alternating between lowercase and uppercase
/// for each letter. Non-alphabetic characters are preserved as-is and don't
/// affect the alternation pattern.
/// 
/// # Parameters
/// - `text`: The input string to transform
/// 
/// # Returns
/// The string with alternating case applied
/// 
/// # Example
/// 
/// ```moonbit
/// let str = @case.alternating_case("hello")
/// assert_eq(str, "hElLo")
///
/// let str = @case.alternating_case("hello world")
/// assert_eq(str, "hElLo WoRlD")
///
/// let str = @case.alternating_case("test123")
/// assert_eq(str, "tEsT123")
///
/// let str = @case.alternating_case("hello123world")
/// assert_eq(str, "hElLo123WoRlD")
///
/// let str = @case.alternating_case("")
/// assert_eq(str, "")
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
      should_uppercase = not(should_uppercase)
    } else {
      result = result + char.to_string()
    }
  }
  result
}
