///|
/// Convert string to snake_case.
/// 
/// Transforms the input string to snake_case by converting all words to lowercase
/// and joining them with underscores.
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to snake_case
/// 
/// # Example
/// 
/// ```moonbit
/// let str = @case.snake_case("hello world")
/// assert_eq(str, "hello_world")
/// 
/// let str = @case.snake_case("HelloWorld")
/// assert_eq(str, "hello_world")
///
/// let str = @case.snake_case("hello-world")
/// assert_eq(str, "hello_world")
///
/// let str = @case.snake_case("hello")
/// assert_eq(str, "hello")
///
/// let str = @case.snake_case("")
/// assert_eq(str, "")
/// ```
pub fn snake_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = string_to_lower(words[0])
  for i = 1; i < words.length(); i = i + 1 {
    result = result + "_" + string_to_lower(words[i])
  }
  result
}
