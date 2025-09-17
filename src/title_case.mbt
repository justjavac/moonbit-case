///|
/// Convert string to proper title case.
/// 
/// Transforms the input string to proper title case by capitalizing major words
/// while keeping minor words (articles, prepositions, conjunctions) lowercase,
/// except for the first and last words which are always capitalized.
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
/// The string converted to proper title case
/// 
/// # Example
/// 
/// ```moonbit
/// let str = @case.title_case("the quick brown fox")
/// assert_eq(str, "The Quick Brown Fox")
/// 
/// let str = @case.title_case("a tale of two cities")
/// assert_eq(str, "A Tale of Two Cities")
///
/// let str = @case.title_case("the lord of the rings")
/// assert_eq(str, "The Lord of the Rings")
///
/// let str = @case.title_case("to be or not to be")
/// assert_eq(str, "To Be or Not to Be")
///
/// let str = @case.title_case("hello world")
/// assert_eq(str, "Hello World")
///
/// let str = @case.title_case("")
/// assert_eq(str, "")
/// ```
/// The string converted to proper title case
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
    if i == 0 || i == words.length() - 1 || not(is_minor) {
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
fn is_minor_word(word : String, minor_words : Array[String]) -> Bool {
  for i = 0; i < minor_words.length(); i = i + 1 {
    if word == minor_words[i] {
      return true
    }
  }
  false
}
