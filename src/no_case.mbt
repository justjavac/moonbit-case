///| Convert string to no case.
/// 
/// Transforms the input string to no case by converting all words to lowercase
/// and joining them with spaces.
/// 
/// Examples:
/// - noCase("hello world") returns "hello world"
/// - noCase("HelloWorld") returns "hello world"
/// - noCase("hello_world") returns "hello world"
/// - noCase("hello") returns "hello"
/// - noCase("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to no case
pub fn noCase(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = string_to_lower(words[0])
  for i = 1; i < words.length(); i = i + 1 {
    result = result + " " + string_to_lower(words[i])
  }
  result
}

///|
test "noCase basic conversion" {
  assert_eq(noCase("hello world"), "hello world")
  assert_eq(noCase("HelloWorld"), "hello world")
  assert_eq(noCase("hello_world"), "hello world")
  assert_eq(noCase("hello"), "hello")
}

///|
test "noCase edge cases" {
  assert_eq(noCase(""), "")
  assert_eq(noCase("a"), "a")
  assert_eq(noCase("A"), "a")
  assert_eq(noCase("123"), "123")
}

///|
test "noCase complex cases" {
  assert_eq(noCase("XMLHttpRequest"), "xml http request")
  assert_eq(noCase("iPhone-App"), "i phone app")
  assert_eq(noCase("foo bar baz"), "foo bar baz")
  assert_eq(noCase("test123value"), "test 123 value")
}
