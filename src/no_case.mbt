///|
/// Convert string to no case.
/// 
/// Transforms the input string to no case by converting all words to lowercase
/// and joining them with spaces.
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to no case
/// 
/// # Example
/// 
/// ```moonbit
/// let str = @case.no_case("hello world")
/// assert_eq(str, "hello world")
///
/// let str = @case.no_case("HelloWorld")
/// assert_eq(str, "hello world")
///
/// let str = @case.no_case("hello_world")
/// assert_eq(str, "hello world")
///
/// let str = @case.no_case("hello")
/// assert_eq(str, "hello")
///
/// let str = @case.no_case("")
/// assert_eq(str, "")
/// ```
pub fn no_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = string_to_lower(words[0])
  for i = 1; i < words.length(); i = i + 1 {
    result = result + " " + string_to_lower(words[i])
  }
  result
}
