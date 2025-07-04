///| Convert string to CONSTANT_CASE (also known as SCREAMING_SNAKE_CASE).
/// 
/// Transforms the input string to CONSTANT_CASE by converting all words to uppercase
/// and joining them with underscores.
/// 
/// # Examples
/// 
/// ```moonbit
/// let str = constant_case("hello world")
/// assert_eq(str, "HELLO_WORLD")
/// 
/// let str = constant_case("HelloWorld")
/// assert_eq(str, "HELLO_WORLD")
///
/// let str = constant_case("hello-world")
/// assert_eq(str, "HELLO_WORLD")
///
/// let str = constant_case("hello")
/// assert_eq(str, "HELLO")
///
/// let str = constant_case("")
/// assert_eq(str, "")
/// ```
///
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to CONSTANT_CASE
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
