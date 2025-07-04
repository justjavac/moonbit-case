///| Convert string to PascalCase (also known as UpperCamelCase).
/// 
/// Transforms the input string to PascalCase by capitalizing the first letter of each word
/// and joining them together without separators.
/// 
/// Examples:
/// - pascalCase("hello world") returns "HelloWorld"
/// - pascalCase("hello-world") returns "HelloWorld"
/// - pascalCase("HELLO_WORLD") returns "HelloWorld"
/// - pascalCase("hello") returns "Hello"
/// - pascalCase("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to PascalCase
pub fn pascalCase(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = ""
  for i = 0; i < words.length(); i = i + 1 {
    result = result + capitalize(string_to_lower(words[i]))
  }
  result
}

///|
test "pascalCase basic conversion" {
  assert_eq(pascalCase("hello world"), "HelloWorld")
  assert_eq(pascalCase("hello-world"), "HelloWorld")
  assert_eq(pascalCase("HELLO_WORLD"), "HelloWorld")
  assert_eq(pascalCase("hello"), "Hello")
}

///|
test "pascalCase edge cases" {
  assert_eq(pascalCase(""), "")
  assert_eq(pascalCase("a"), "A")
  assert_eq(pascalCase("A"), "A")
  assert_eq(pascalCase("123"), "123")
}

///|
test "pascalCase complex cases" {
  assert_eq(pascalCase("XMLHttpRequest"), "XmlHttpRequest")
  assert_eq(pascalCase("iPhone-app"), "IPhoneApp")
  assert_eq(pascalCase("foo_bar_baz"), "FooBarBaz")
  assert_eq(pascalCase("test123value"), "Test123Value")
}
