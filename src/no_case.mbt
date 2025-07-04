///| Convert string to no case.
/// 
/// Transforms the input string to no case by converting all words to lowercase
/// and joining them with spaces.
/// 
/// # Examples
/// 
/// ```moonbit
/// let str = no_case("hello world")
/// assert_eq(str, "hello world")
/// 
/// let str = no_case("HelloWorld")
/// assert_eq(str, "hello world")
///
/// let str = no_case("hello_world")
/// assert_eq(str, "hello world")
///
/// let str = no_case("hello")
/// assert_eq(str, "hello")
///
/// let str = no_case("")
/// assert_eq(str, "")
/// ```
///
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to no case
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
