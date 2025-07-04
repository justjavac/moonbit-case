///| Convert string to Sentence case.
/// 
/// Transforms the input string to Sentence case by capitalizing only the first letter
/// of the first word and joining all words with spaces.
/// 
/// Examples:
/// - sentenceCase("hello world") returns "Hello world"
/// - sentenceCase("HelloWorld") returns "Hello world"
/// - sentenceCase("hello_world") returns "Hello world"
/// - sentenceCase("hello") returns "Hello"
/// - sentenceCase("") returns ""
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
pub fn sentenceCase(text : String) -> String {
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

///|
test "sentenceCase basic conversion" {
  assert_eq(sentenceCase("hello world"), "Hello world")
  assert_eq(sentenceCase("HelloWorld"), "Hello world")
  assert_eq(sentenceCase("hello_world"), "Hello world")
  assert_eq(sentenceCase("hello"), "Hello")
}

///|
test "sentenceCase edge cases" {
  assert_eq(sentenceCase(""), "")
  assert_eq(sentenceCase("a"), "A")
  assert_eq(sentenceCase("A"), "A")
  assert_eq(sentenceCase("123"), "123")
}

///|
test "sentenceCase complex cases" {
  assert_eq(sentenceCase("XMLHttpRequest"), "Xml http request")
  assert_eq(sentenceCase("iPhone-App"), "I phone app")
  assert_eq(sentenceCase("foo bar baz"), "Foo bar baz")
  assert_eq(sentenceCase("test123value"), "Test 123 value")
}
