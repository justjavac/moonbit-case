///|
/// Convert string to Sentence case.
/// 
/// Transforms the input string to Sentence case by capitalizing only the first letter
/// of the first word and joining all words with spaces.
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to Sentence case
/// 
/// # Example
/// 
/// ```moonbit
/// let str = @case.sentence_case("hello world")
/// assert_eq(str, "Hello world")
/// 
/// let str = @case.sentence_case("HelloWorld")
/// assert_eq(str, "Hello world")
///
/// let str = @case.sentence_case("hello_world")
/// assert_eq(str, "Hello world")
///
/// let str = @case.sentence_case("hello")
/// assert_eq(str, "Hello")
///
/// let str = @case.sentence_case("")
/// assert_eq(str, "")
/// ```
pub fn sentence_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = capitalize(string_to_lower(words[0]))
  for i = 1; i < words.length(); i = i + 1 {
    result = result + " " + string_to_lower(words[i])
  }
  result
}
