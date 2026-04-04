///|
/// Convert a string to English-style title case.
///
/// Minor words such as `and`, `of`, and `the` stay lowercase when they appear
/// in the middle, while the first and last word are always capitalized.
///
/// # Example
///
/// ```mbt check
/// test "title_case doc example" {
///   assert_eq(title_case("the lord of the rings"), "The Lord of the Rings")
///   assert_eq(title_case("war and peace"), "War and Peace")
///   assert_eq(title_case(""), "")
/// }
/// ```
pub fn title_case(text : String) -> String {
  let minor_words = [
    "a", "an", "and", "as", "at", "but", "by", "for", "if", "in", "nor", "of", "on",
    "or", "so", "the", "to", "up", "yet",
  ]
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = ""
  for i = 0; i < words.length(); i = i + 1 {
    let word = string_to_lower(words[i])
    let is_minor = is_minor_word(word, minor_words)

    // Always capitalize first and last word, or if it's not a minor word
    if i == 0 || i == words.length() - 1 || !is_minor {
      result = if i == 0 {
        capitalize(word)
      } else {
        result + " " + capitalize(word)
      }
    } else {
      result = result + " " + word
    }
  }
  result
}

///|
/// Return whether a word belongs to the built-in minor-word list.
fn is_minor_word(word : String, minor_words : Array[String]) -> Bool {
  for i = 0; i < minor_words.length(); i = i + 1 {
    if word == minor_words[i] {
      return true
    }
  }
  false
}
