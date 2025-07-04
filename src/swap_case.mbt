///| Swap the case of each character in the string.
/// 
/// Transforms the input string by converting uppercase letters to lowercase
/// and lowercase letters to uppercase, while leaving non-alphabetic characters unchanged.
/// 
/// Examples:
/// - swap_case("Hello World") returns "hELLO wORLD"
/// - swap_case("hELLO wORLD") returns "Hello World"
/// - swap_case("Test123") returns "tEST123"
/// - swap_case("hello") returns "HELLO"
/// - swap_case("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to transform
/// 
/// # Returns
/// The string with case swapped
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
