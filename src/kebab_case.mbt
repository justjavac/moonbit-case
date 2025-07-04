///| Convert string to kebab-case (also known as param-case or dash-case).
/// 
/// Transforms the input string to kebab-case by converting all words to lowercase
/// and joining them with hyphens.
/// 
/// Examples:
/// - kebabCase("hello world") returns "hello-world"
/// - kebabCase("HelloWorld") returns "hello-world"
/// - kebabCase("hello_world") returns "hello-world"
/// - kebabCase("hello") returns "hello"
/// - kebabCase("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to kebab-case
pub fn kebabCase(text : String) -> String {
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

///|
test "kebabCase basic conversion" {
  assert_eq(kebabCase("hello world"), "hello-world")
  assert_eq(kebabCase("HelloWorld"), "hello-world")
  assert_eq(kebabCase("hello_world"), "hello-world")
  assert_eq(kebabCase("hello"), "hello")
}

///|
test "kebabCase edge cases" {
  assert_eq(kebabCase(""), "")
  assert_eq(kebabCase("a"), "a")
  assert_eq(kebabCase("A"), "a")
  assert_eq(kebabCase("123"), "123")
}

///|
test "kebabCase complex cases" {
  assert_eq(kebabCase("XMLHttpRequest"), "xml-http-request")
  assert_eq(kebabCase("iPhone-App"), "i-phone-app")
  assert_eq(kebabCase("foo bar baz"), "foo-bar-baz")
  assert_eq(kebabCase("test123value"), "test-123-value")
}
