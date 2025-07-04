///| Convert string to dot.case.
/// 
/// Transforms the input string to dot.case by converting all words to lowercase
/// and joining them with periods.
/// 
/// Examples:
/// - dotCase("hello world") returns "hello.world"
/// - dotCase("HelloWorld") returns "hello.world"
/// - dotCase("hello_world") returns "hello.world"
/// - dotCase("hello") returns "hello"
/// - dotCase("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to dot.caseo dot.case.
/// 
/// Transforms the input string to dot.case by converting all words to lowercase
/// and joining them with dots.
/// 
/// # Examples
/// - Additional test case: dotCase("hello world") returns "hello.world"
/// - Another example: dotCase("HelloWorld") returns "hello.world"
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to dot.case
pub fn dotCase(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = string_to_lower(words[0])
  for i = 1; i < words.length(); i = i + 1 {
    result = result + "." + string_to_lower(words[i])
  }
  result
}

///|
test "dotCase basic conversion" {
  assert_eq(dotCase("hello world"), "hello.world")
  assert_eq(dotCase("HelloWorld"), "hello.world")
  assert_eq(dotCase("hello_world"), "hello.world")
  assert_eq(dotCase("hello"), "hello")
}

///|
test "dotCase edge cases" {
  assert_eq(dotCase(""), "")
  assert_eq(dotCase("a"), "a")
  assert_eq(dotCase("A"), "a")
  assert_eq(dotCase("123"), "123")
}

///|
test "dotCase complex cases" {
  assert_eq(dotCase("XMLHttpRequest"), "xml.http.request")
  assert_eq(dotCase("iPhone-App"), "i.phone.app")
  assert_eq(dotCase("foo bar baz"), "foo.bar.baz")
  assert_eq(dotCase("test123value"), "test.123.value")
}
