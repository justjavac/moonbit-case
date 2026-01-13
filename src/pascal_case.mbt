///|
/// Convert string to PascalCase (also known as UpperCamelCase).
/// 
/// Transforms the input string to PascalCase by capitalizing the first letter of each word
/// and joining them together without separators.
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to PascalCase
/// 
/// # Example
/// 
/// ```moonbit
/// let str = @case.pascal_case("hello world")
/// assert_eq(str, "HelloWorld")
///
/// let str = @case.pascal_case("hello-world")
/// assert_eq(str, "HelloWorld")
///
/// let str = @case.pascal_case("HELLO_WORLD")
/// assert_eq(str, "HelloWorld")
///
/// let str = @case.pascal_case("hello")
/// assert_eq(str, "Hello")
///
/// let str = @case.pascal_case("")
/// assert_eq(str, "")
/// ```
pub fn pascal_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = ""
  for i = 0; i < words.length(); i = i + 1 {
    result = result + capitalize(string_to_lower(words[i]))
  }
  result
}
