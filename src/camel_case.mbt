///| Convert string to camelCase.
/// 
/// Transforms the input string to camelCase by converting the first word to lowercase
/// and capitalizing the first letter of subsequent words, then joining them together.
/// 
/// Examples:
/// - camel_case("hello world") returns "helloWorld"
/// - camel_case("Hello-World") returns "helloWorld"  
/// - camel_case("HELLO_WORLD") returns "helloWorld"
/// - camel_case("hello") returns "hello"
/// - camel_case("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to camelCase
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
