///| Convert string to Capital Case (Title Case with spaces).
/// 
/// Transforms the input string to Capital Case by capitalizing the first letter of each word
/// and joining them with spaces.
/// 
/// Examples:
/// - capitalCase("hello world") returns "Hello World"
/// - capitalCase("HelloWorld") returns "Hello World"
/// - capitalCase("hello_world") returns "Hello World"
/// - capitalCase("hello") returns "Hello"
/// - capitalCase("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to Capital Caseo Capital Case.
/// 
/// Transforms the input string to Capital Case by capitalizing the first letter of each word
/// and joining them with spaces.
/// 
/// # Examples
/// - Additional test case: capitalCase("hello world") returns "Hello World"
/// - Another example: capitalCase("HelloWorld") returns "Hello World"
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to Capital Case
pub fn capitalCase(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = capitalize(string_to_lower(words[0]))
  for i = 1; i < words.length(); i = i + 1 {
    result = result + " " + capitalize(string_to_lower(words[i]))
  }
  result
}

///|
test "capitalCase basic conversion" {
  assert_eq(capitalCase("hello world"), "Hello World")
  assert_eq(capitalCase("HelloWorld"), "Hello World")
  assert_eq(capitalCase("hello_world"), "Hello World")
  assert_eq(capitalCase("hello"), "Hello")
}

///|
test "capitalCase edge cases" {
  assert_eq(capitalCase(""), "")
  assert_eq(capitalCase("a"), "A")
  assert_eq(capitalCase("A"), "A")
  assert_eq(capitalCase("123"), "123")
}

///|
test "capitalCase complex cases" {
  assert_eq(capitalCase("XMLHttpRequest"), "Xml Http Request")
  assert_eq(capitalCase("iPhone-App"), "I Phone App")
  assert_eq(capitalCase("foo bar baz"), "Foo Bar Baz")
  assert_eq(capitalCase("test123value"), "Test 123 Value")
}
