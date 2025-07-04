///| Convert string to camelCase.
/// 
/// Transforms the input string to camelCase by converting the first word to lowercase
/// and capitalizing the first letter of subsequent words, then joining them together.
/// 
/// Examples:
/// - camelCase("hello world") returns "helloWorld"
/// - camelCase("Hello-World") returns "helloWorld"  
/// - camelCase("HELLO_WORLD") returns "helloWorld"
/// - camelCase("hello") returns "hello"
/// - camelCase("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to camelCase
pub fn camelCase(text : String) -> String {
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

///|
test "camelCase basic conversion" {
  assert_eq(camelCase("hello world"), "helloWorld")
  assert_eq(camelCase("Hello-World"), "helloWorld")
  assert_eq(camelCase("HELLO_WORLD"), "helloWorld")
  assert_eq(camelCase("hello"), "hello")
}

///|
test "camelCase edge cases" {
  assert_eq(camelCase(""), "")
  assert_eq(camelCase("a"), "a")
  assert_eq(camelCase("A"), "a")
  assert_eq(camelCase("123"), "123")
}

///|
test "camelCase complex cases" {
  assert_eq(camelCase("XMLHttpRequest"), "xmlHttpRequest")
  assert_eq(camelCase("iPhone-App"), "iPhoneApp")
  assert_eq(camelCase("foo_bar_baz"), "fooBarBaz")
  assert_eq(camelCase("test123value"), "test123Value")
}
