///| Convert string to path/case.
/// 
/// Transforms the input string to path/case by converting all words to lowercase
/// and joining them with forward slashes.
/// 
/// Examples:
/// - path_case("hello world") returns "hello/world"
/// - path_case("HelloWorld") returns "hello/world"
/// - path_case("hello_world") returns "hello/world"
/// - path_case("hello") returns "hello"
/// - path_case("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to path/case
pub fn path_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = string_to_lower(words[0])
  for i = 1; i < words.length(); i = i + 1 {
    result = result + "/" + string_to_lower(words[i])
  }
  result
}
