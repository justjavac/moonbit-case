///|
/// Convert string to CONSTANT_CASE (also known as SCREAMING_SNAKE_CASE).
/// 
/// Transforms the input string to CONSTANT_CASE by converting all words to uppercase
/// and joining them with underscores.
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to CONSTANT_CASE
/// 
/// # Example
/// 
/// ```moonbit
/// let str = @case.constant_case("hello world")
/// assert_eq(str, "HELLO_WORLD")
/// 
/// let str = @case.constant_case("HelloWorld")
/// assert_eq(str, "HELLO_WORLD")
///
/// let str = @case.constant_case("hello-world")
/// assert_eq(str, "HELLO_WORLD")
///
/// let str = @case.constant_case("hello")
/// assert_eq(str, "HELLO")
///
/// let str = @case.constant_case("")
/// assert_eq(str, "")
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
