///| Convert string to Capital Case (Title Case with spaces).
/// 
/// Transforms the input string to Capital Case by capitalizing the first letter of each word
/// and joining them with spaces.
/// 
/// Examples:
/// - capital_case("hello world") returns "Hello World"
/// - capital_case("HelloWorld") returns "Hello World"
/// - capital_case("hello_world") returns "Hello World"
/// - capital_case("hello") returns "Hello"
/// - capital_case("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to Capital Caseo Capital Case.
/// 
/// Transforms the input string to Capital Case by capitalizing the first letter of each word
/// and joining them with spaces.
/// 
/// # Examples
/// - Additional test case: capitalCase("hello world") returns "Hello World"
/// - Another example: capitalCase("HelloWorld") returns "Hello World"
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to Capital Case
pub fn capital_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = capitalize(string_to_lower(words[0]))
  for i = 1; i < words.length(); i = i + 1 {
    result = result + " " + capitalize(string_to_lower(words[i]))
  }
  result
}
