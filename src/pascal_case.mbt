///| Convert string to PascalCase (also known as UpperCamelCase).
/// 
/// Transforms the input string to PascalCase by capitalizing the first letter of each word
/// and joining them together without separators.
/// 
/// Examples:
/// - pascal_case("hello world") returns "HelloWorld"
/// - pascal_case("hello-world") returns "HelloWorld"
/// - pascal_case("HELLO_WORLD") returns "HelloWorld"
/// - pascal_case("hello") returns "Hello"
/// - pascal_case("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to PascalCase
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
