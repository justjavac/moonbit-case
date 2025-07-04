///| Convert string to Capital Case (Title Case with spaces).
/// 
/// Transforms the input string to Capital Case by capitalizing the first letter of each word
/// and joining them with spaces.
/// 
/// # Examples
/// 
/// ```moonbit
/// let str = capital_case("hello world")
/// assert_eq(str, "Hello World")
/// 
/// let str = capital_case("HelloWorld")
/// assert_eq(str, "Hello World")
///
/// let str = capital_case("hello_world")
/// assert_eq(str, "Hello World")
///
/// let str = capital_case("hello")
/// assert_eq(str, "Hello")
///
/// let str = capital_case("")
/// assert_eq(str, "")
/// ```
///
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to Capital Case
pub fn capital_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = capitalize(string_to_lower(words[0]))
  for i = 1; i < words.length(); i = i + 1 {
    result = result + " " + capitalize(string_to_lower(words[i]))
  }
  result
}
