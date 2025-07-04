///| Convert string to path/case.
/// 
/// Transforms the input string to path/case by converting all words to lowercase
/// and joining them with forward slashes.
/// 
/// Examples:
/// - pathCase("hello world") returns "hello/world"
/// - pathCase("HelloWorld") returns "hello/world"
/// - pathCase("hello_world") returns "hello/world"
/// - pathCase("hello") returns "hello"
/// - pathCase("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to path/case
pub fn pathCase(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = string_to_lower(words[0])
  for i = 1; i < words.length(); i = i + 1 {
    result = result + "/" + string_to_lower(words[i])
  }
  result
}

///|
test "pathCase basic conversion" {
  assert_eq(pathCase("hello world"), "hello/world")
  assert_eq(pathCase("HelloWorld"), "hello/world")
  assert_eq(pathCase("hello_world"), "hello/world")
  assert_eq(pathCase("hello"), "hello")
}

///|
test "pathCase edge cases" {
  assert_eq(pathCase(""), "")
  assert_eq(pathCase("a"), "a")
  assert_eq(pathCase("A"), "a")
  assert_eq(pathCase("123"), "123")
}

///|
test "pathCase complex cases" {
  assert_eq(pathCase("XMLHttpRequest"), "xml/http/request")
  assert_eq(pathCase("iPhone-App"), "i/phone/app")
  assert_eq(pathCase("foo bar baz"), "foo/bar/baz")
  assert_eq(pathCase("test123value"), "test/123/value")
}
