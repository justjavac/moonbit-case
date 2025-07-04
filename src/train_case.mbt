///| Convert string to Train-Case (also known as HTTP-Header-Case).
/// 
/// Transforms the input string to Train-Case by capitalizing the first letter of each word
/// and joining them with hyphens.
/// 
/// Examples:
/// - trainCase("hello world") returns "Hello-World"
/// - trainCase("HelloWorld") returns "Hello-World"
/// - trainCase("hello_world") returns "Hello-World"
/// - trainCase("hello") returns "Hello"
/// - trainCase("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to Train-Case
pub fn trainCase(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = capitalize(string_to_lower(words[0]))
  for i = 1; i < words.length(); i = i + 1 {
    result = result + "-" + capitalize(string_to_lower(words[i]))
  }
  result
}

///|
test "trainCase basic conversion" {
  assert_eq(trainCase("hello world"), "Hello-World")
  assert_eq(trainCase("HelloWorld"), "Hello-World")
  assert_eq(trainCase("hello_world"), "Hello-World")
  assert_eq(trainCase("hello"), "Hello")
}

///|
test "trainCase edge cases" {
  assert_eq(trainCase(""), "")
  assert_eq(trainCase("a"), "A")
  assert_eq(trainCase("A"), "A")
  assert_eq(trainCase("123"), "123")
}

///|
test "trainCase complex cases" {
  assert_eq(trainCase("XMLHttpRequest"), "Xml-Http-Request")
  assert_eq(trainCase("iPhone-App"), "I-Phone-App")
  assert_eq(trainCase("foo bar baz"), "Foo-Bar-Baz")
  assert_eq(trainCase("test123value"), "Test-123-Value")
}
