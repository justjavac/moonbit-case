// Common utility functions for string case conversions

///|
/// Split text into words using separators, case changes, and digit boundaries.
fn split(text : String) -> Array[String] {
  if text.is_empty() {
    return []
  }
  let words : Array[String] = []
  let mut current_word = ""
  let chars = text.to_array()
  for i = 0; i < chars.length(); i = i + 1 {
    let char = chars[i]
    let char_str = char.to_string()

    // Check if this character should start a new word
    let should_split = if i == 0 {
      false
    } else {
      let prev_char = chars[i - 1]

      // Split on non-alphanumeric characters
      if is_separator(char) {
        true
      } else if is_separator(prev_char) {
        false // Previous was separator, this starts new word
      } else if is_uppercase(char) && is_lowercase(prev_char) {
        // camelCase -> PascalCase boundary
        true
      } else if is_uppercase(char) &&
        is_uppercase(prev_char) &&
        i + 1 < chars.length() &&
        is_lowercase(chars[i + 1]) {
        // PASCALCase -> PascalCase boundary  
        true
      } else if is_digit(char) && is_letter(prev_char) {
        // letter -> digit boundary
        true
      } else if is_letter(char) && is_digit(prev_char) {
        // digit -> letter boundary  
        true
      } else {
        false
      }
    }
    if should_split && !current_word.is_empty() {
      words.push(current_word)
      current_word = ""
    }
    if !is_separator(char) {
      current_word = current_word + char_str
    }
  }
  if !current_word.is_empty() {
    words.push(current_word)
  }
  words
}

///|
/// Return whether a character should break words.
fn is_separator(char : Char) -> Bool {
  match char {
    ' '
    | '\t'
    | '\n'
    | '\r'
    | '-'
    | '_'
    | '.'
    | '/'
    | '\\'
    | ':'
    | ';'
    | ','
    | '!'
    | '?'
    | '@'
    | '#'
    | '$'
    | '%'
    | '^'
    | '&'
    | '*'
    | '('
    | ')'
    | '['
    | ']'
    | '{'
    | '}'
    | '<'
    | '>'
    | '='
    | '+'
    | '|'
    | '`'
    | '~'
    | '\''
    | '"' => true
    _ => false
  }
}

///|
/// Return whether a character is an uppercase ASCII letter.
fn is_uppercase(char : Char) -> Bool {
  char >= 'A' && char <= 'Z'
}

///|
/// Return whether a character is a lowercase ASCII letter.
fn is_lowercase(char : Char) -> Bool {
  char >= 'a' && char <= 'z'
}

///|
/// Return whether a character is an ASCII letter.
fn is_letter(char : Char) -> Bool {
  is_uppercase(char) || is_lowercase(char)
}

///|
/// Return whether a character is an ASCII digit.
fn is_digit(char : Char) -> Bool {
  char >= '0' && char <= '9'
}

///|
/// Convert one ASCII letter to uppercase.
fn to_uppercase(char : Char) -> Char {
  if is_lowercase(char) {
    (char.to_int() - 32) |> Int::unsafe_to_char
  } else {
    char
  }
}

///|
/// Convert one ASCII letter to lowercase.
fn to_lowercase(char : Char) -> Char {
  if is_uppercase(char) {
    (char.to_int() + 32) |> Int::unsafe_to_char
  } else {
    char
  }
}

///|
/// Convert every ASCII letter in a string to uppercase.
fn string_to_upper(text : String) -> String {
  let chars = text.to_array()
  let mut result = ""
  for i = 0; i < chars.length(); i = i + 1 {
    result = result + to_uppercase(chars[i]).to_string()
  }
  result
}

///|
/// Convert every ASCII letter in a string to lowercase.
fn string_to_lower(text : String) -> String {
  let chars = text.to_array()
  let mut result = ""
  for i = 0; i < chars.length(); i = i + 1 {
    result = result + to_lowercase(chars[i]).to_string()
  }
  result
}

///|
/// Uppercase the first character of a non-empty string.
fn capitalize(text : String) -> String {
  if text.is_empty() {
    text
  } else {
    let chars = text.to_array()
    let first = to_uppercase(chars[0]).to_string()
    if chars.length() == 1 {
      first
    } else {
      // Build the rest of the string from characters
      let mut rest = ""
      for i = 1; i < chars.length(); i = i + 1 {
        rest = rest + chars[i].to_string()
      }
      first + rest
    }
  }
}

///|
test "split basic words" {
  assert_eq(split("hello world"), ["hello", "world"])
  assert_eq(split("test string here"), ["test", "string", "here"])
}

///|
test "split camelCase" {
  assert_eq(split("camelCase"), ["camel", "Case"])
  assert_eq(split("XMLHttpRequest"), ["XML", "Http", "Request"])
  assert_eq(split("iPhone"), ["i", "Phone"])
}

///|
test "split snake_case" {
  assert_eq(split("snake_case"), ["snake", "case"])
  assert_eq(split("hello_world_test"), ["hello", "world", "test"])
}

///|
test "split kebab-case" {
  assert_eq(split("kebab-case"), ["kebab", "case"])
  assert_eq(split("hello-world-test"), ["hello", "world", "test"])
}

///|
test "split with numbers" {
  assert_eq(split("test123value"), ["test", "123", "value"])
  assert_eq(split("version1.2.3"), ["version", "1", "2", "3"])
}

///|
test "split edge cases" {
  assert_eq(split(""), [])
  assert_eq(split("single"), ["single"])
  assert_eq(split("ALLCAPS"), ["ALLCAPS"])
}

///|
test "string_to_upper" {
  assert_eq(string_to_upper("hello"), "HELLO")
  assert_eq(string_to_upper("Hello World"), "HELLO WORLD")
  assert_eq(string_to_upper("test123"), "TEST123")
}

///|
test "string_to_lower" {
  assert_eq(string_to_lower("HELLO"), "hello")
  assert_eq(string_to_lower("Hello World"), "hello world")
  assert_eq(string_to_lower("TEST123"), "test123")
}

///|
test "capitalize" {
  assert_eq(capitalize("hello"), "Hello")
  assert_eq(capitalize("HELLO"), "HELLO")
  assert_eq(capitalize("test"), "Test")
  assert_eq(capitalize(""), "")
}
