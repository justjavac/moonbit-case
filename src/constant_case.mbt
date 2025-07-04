///| Convert string to CONSTANT_CASE (also known as SCREAMING_SNAKE_CASE).
/// 
/// Transforms the input string to CONSTANT_CASE by converting all words to uppercase
/// and joining them with underscores.
/// 
/// Examples:
/// - constantCase("hello world") returns "HELLO_WORLD"
/// - constantCase("HelloWorld") returns "HELLO_WORLD"
/// - constantCase("hello-world") returns "HELLO_WORLD"
/// - constantCase("hello") returns "HELLO"
/// - constantCase("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to CONSTANT_CASE
pub fn constantCase(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = string_to_upper(words[0])
  for i = 1; i < words.length(); i = i + 1 {
    result = result + "_" + string_to_upper(words[i])
  }
  result
}

///|
test "constantCase basic conversion" {
  assert_eq(constantCase("hello world"), "HELLO_WORLD")
  assert_eq(constantCase("HelloWorld"), "HELLO_WORLD")
  assert_eq(constantCase("hello-world"), "HELLO_WORLD")
  assert_eq(constantCase("hello"), "HELLO")
}

///|
test "constantCase edge cases" {
  assert_eq(constantCase(""), "")
  assert_eq(constantCase("a"), "A")
  assert_eq(constantCase("A"), "A")
  assert_eq(constantCase("123"), "123")
}

///|
test "constantCase complex cases" {
  assert_eq(constantCase("XMLHttpRequest"), "XML_HTTP_REQUEST")
  assert_eq(constantCase("iPhone-App"), "I_PHONE_APP")
  assert_eq(constantCase("foo bar baz"), "FOO_BAR_BAZ")
  assert_eq(constantCase("test123value"), "TEST_123_VALUE")
}
