///| Convert string to camelCase.
/// 
/// Transforms the input string to camelCase by converting the first word to lowercase
/// and capitalizing the first letter of subsequent words, then joining them together.
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to camelCase
/// 
/// # Examples
/// 
/// ```moonbit
/// let str = @case.camel_case("hello world")
/// assert_eq(str, "helloWorld")
///
/// let str = @case.camel_case("Hello-World")
/// assert_eq(str, "helloWorld")
///
/// let str = @case.camel_case("HELLO_WORLD")
/// assert_eq(str, "helloWorld")
///
/// let str = @case.camel_case("hello")
/// assert_eq(str, "hello")
///
/// let str = @case.camel_case("")
/// assert_eq(str, "")
/// ```
pub fn camel_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = string_to_lower(words[0])
  for i = 1; i < words.length(); i = i + 1 {
    result = result + capitalize(string_to_lower(words[i]))
  }
  result
}
