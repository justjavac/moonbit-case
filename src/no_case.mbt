///| Convert string to no case.
/// 
/// Transforms the input string to no case by converting all words to lowercase
/// and joining them with spaces.
/// 
/// Examples:
/// - no_case("hello world") returns "hello world"
/// - no_case("HelloWorld") returns "hello world"
/// - no_case("hello_world") returns "hello world"
/// - no_case("hello") returns "hello"
/// - no_case("") returns ""
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
