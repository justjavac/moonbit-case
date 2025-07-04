///| Swap the case of each character in the string.
/// 
/// Transforms the input string by converting uppercase letters to lowercase
/// and lowercase letters to uppercase, while leaving non-alphabetic characters unchanged.
/// 
/// # Examples
/// 
/// ```moonbit
/// let str = swap_case("Hello World")
/// assert_eq(str, "hELLO wORLD")
/// 
/// let str = swap_case("hELLO wORLD")
/// assert_eq(str, "Hello World")
///
/// let str = swap_case("Test123")
/// assert_eq(str, "tEST123")
///
/// let str = swap_case("hello")
/// assert_eq(str, "HELLO")
///
/// let str = swap_case("")
/// assert_eq(str, "")
/// ```
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
