///| Convert string to dot.case.
/// 
/// Transforms the input string to dot.case by converting all words to lowercase
/// and joining them with periods.
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to dot.case
/// 
/// # Example
/// 
/// ```moonbit
/// let str = @case.dot_case("hello world")
/// assert_eq(str, "hello.world")
/// 
/// let str = @case.dot_case("HelloWorld")
/// assert_eq(str, "hello.world")
///
/// let str = @case.dot_case("hello_world")
/// assert_eq(str, "hello.world")
///
/// let str = @case.dot_case("hello")
/// assert_eq(str, "hello")
///
/// let str = @case.dot_case("")
/// assert_eq(str, "")
/// ```
pub fn dot_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = string_to_lower(words[0])
  for i = 1; i < words.length(); i = i + 1 {
    result = result + "." + string_to_lower(words[i])
  }
  result
}
