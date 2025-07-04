///| Convert string to CONSTANT_CASE (also known as SCREAMING_SNAKE_CASE).
/// 
/// Transforms the input string to CONSTANT_CASE by converting all words to uppercase
/// and joining them with underscores.
/// 
/// Examples:
/// - constant_case("hello world") returns "HELLO_WORLD"
/// - constant_case("HelloWorld") returns "HELLO_WORLD"
/// - constant_case("hello-world") returns "HELLO_WORLD"
/// - constant_case("hello") returns "HELLO"
/// - constant_case("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to CONSTANT_CASE
pub fn constant_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = string_to_upper(words[0])
  for i = 1; i < words.length(); i = i + 1 {
    result = result + "_" + string_to_upper(words[i])
  }
  result
}
