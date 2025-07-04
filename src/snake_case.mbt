///| Convert string to snake_case.
/// 
/// Transforms the input string to snake_case by converting all words to lowercase
/// and joining them with underscores.
/// 
/// Examples:
/// - snake_case("hello world") returns "hello_world"
/// - snake_case("HelloWorld") returns "hello_world"
/// - snake_case("hello-world") returns "hello_world"
/// - snake_case("hello") returns "hello"
/// - snake_case("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to snake_case
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
