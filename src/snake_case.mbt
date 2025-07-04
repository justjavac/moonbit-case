///| Convert string to snake_case.
/// 
/// Transforms the input string to snake_case by converting all words to lowercase
/// and joining them with underscores.
/// 
/// Examples:
/// - snakeCase("hello world") returns "hello_world"
/// - snakeCase("HelloWorld") returns "hello_world"
/// - snakeCase("hello-world") returns "hello_world"
/// - snakeCase("hello") returns "hello"
/// - snakeCase("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to snake_case
pub fn snakeCase(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = string_to_lower(words[0])
  for i = 1; i < words.length(); i = i + 1 {
    result = result + "_" + string_to_lower(words[i])
  }
  result
}

///|
test "snakeCase basic conversion" {
  assert_eq(snakeCase("hello world"), "hello_world")
  assert_eq(snakeCase("HelloWorld"), "hello_world")
  assert_eq(snakeCase("hello-world"), "hello_world")
  assert_eq(snakeCase("hello"), "hello")
}

///|
test "snakeCase edge cases" {
  assert_eq(snakeCase(""), "")
  assert_eq(snakeCase("a"), "a")
  assert_eq(snakeCase("A"), "a")
  assert_eq(snakeCase("123"), "123")
}

///|
test "snakeCase complex cases" {
  assert_eq(snakeCase("XMLHttpRequest"), "xml_http_request")
  assert_eq(snakeCase("iPhone-App"), "i_phone_app")
  assert_eq(snakeCase("foo bar baz"), "foo_bar_baz")
  assert_eq(snakeCase("test123value"), "test_123_value")
}
