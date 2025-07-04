///| Convert string to kebab-case (also known as param-case or dash-case).
/// 
/// Transforms the input string to kebab-case by converting all words to lowercase
/// and joining them with hyphens.
/// 
/// Examples:
/// - kebab_case("hello world") returns "hello-world"
/// - kebab_case("HelloWorld") returns "hello-world"
/// - kebab_case("hello_world") returns "hello-world"
/// - kebab_case("hello") returns "hello"
/// - kebab_case("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to kebab-case
pub fn kebab_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = string_to_lower(words[0])
  for i = 1; i < words.length(); i = i + 1 {
    result = result + "-" + string_to_lower(words[i])
  }
  result
}
