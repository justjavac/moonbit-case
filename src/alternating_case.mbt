///| Convert string to alternating case.
/// 
/// Transforms the input string by alternating between lowercase and uppercase
/// for each letter. Non-alphabetic characters are preserved as-is and don't
/// affect the alternation pattern.
/// 
/// Examples:
/// - alternating_case("hello") returns "hElLo"
/// - alternating_case("hello world") returns "hElLo WoRlD"
/// - alternating_case("test123") returns "tEsT123"
/// - alternating_case("hello123world") returns "hElLo123WoRlD"
/// - alternating_case("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to transform
/// 
/// # Returns
/// The string with alternating case applied
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
