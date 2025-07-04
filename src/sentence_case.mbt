///| Convert string to Sentence case.
/// 
/// Transforms the input string to Sentence case by capitalizing only the first letter
/// of the first word and joining all words with spaces.
/// 
/// Examples:
/// - sentence_case("hello world") returns "Hello world"
/// - sentence_case("HelloWorld") returns "Hello world"
/// - sentence_case("hello_world") returns "Hello world"
/// - sentence_case("hello") returns "Hello"
/// - sentence_case("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to Sentence caseo Sentence case.
/// 
/// Transforms the input string to Sentence case by capitalizing only the first word
/// and keeping the rest in lowercase, joined with spaces.
/// 
/// # Examples
/// - Additional test case: sentenceCase("hello world") returns "Hello world"
/// - Another example: sentenceCase("HelloWorld") returns "Hello world"
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to Sentence case
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
