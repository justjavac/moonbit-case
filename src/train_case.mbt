///| Convert string to Train-Case (also known as HTTP-Header-Case).
/// 
/// Transforms the input string to Train-Case by capitalizing the first letter of each word
/// and joining them with hyphens.
/// 
/// Examples:
/// - train_case("hello world") returns "Hello-World"
/// - train_case("HelloWorld") returns "Hello-World"
/// - train_case("hello_world") returns "Hello-World"
/// - train_case("hello") returns "Hello"
/// - train_case("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to Train-Case
pub fn train_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = capitalize(string_to_lower(words[0]))
  for i = 1; i < words.length(); i = i + 1 {
    result = result + "-" + capitalize(string_to_lower(words[i]))
  }
  result
}
