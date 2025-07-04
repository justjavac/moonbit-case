///| Swap the case of each character in the string.
/// 
/// Transforms the input string by converting uppercase letters to lowercase
/// and lowercase letters to uppercase, while leaving non-alphabetic characters unchanged.
/// 
/// Examples:
/// - swapCase("Hello World") returns "hELLO wORLD"
/// - swapCase("hELLO wORLD") returns "Hello World"
/// - swapCase("Test123") returns "tEST123"
/// - swapCase("hello") returns "HELLO"
/// - swapCase("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to transform
/// 
/// # Returns
/// The string with case swapped
pub fn swapCase(text : String) -> String {
  let chars = text.to_array()
  let mut result = ""
  for i = 0; i < chars.length(); i = i + 1 {
    let char = chars[i]
    if is_uppercase(char) {
      result = result + to_lowercase(char).to_string()
    } else if is_lowercase(char) {
      result = result + to_uppercase(char).to_string()
    } else {
      result = result + char.to_string()
    }
  }
  result
}

///|
test "swapCase basic conversion" {
  assert_eq(swapCase("Hello World"), "hELLO wORLD")
  assert_eq(swapCase("hELLO wORLD"), "Hello World")
  assert_eq(swapCase("Test123"), "tEST123")
  assert_eq(swapCase("hello"), "HELLO")
}

///|
test "swapCase edge cases" {
  assert_eq(swapCase(""), "")
  assert_eq(swapCase("123"), "123")
  assert_eq(swapCase("!@#"), "!@#")
  assert_eq(swapCase("A"), "a")
  assert_eq(swapCase("a"), "A")
}

///|
test "swapCase mixed cases" {
  assert_eq(swapCase("CamelCase"), "cAMELcASE")
  assert_eq(swapCase("snake_case"), "SNAKE_CASE")
  assert_eq(swapCase("kebab-case"), "KEBAB-CASE")
}
