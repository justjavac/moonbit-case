///| Convert string to proper title case.
/// 
/// Transforms the input string to proper title case by capitalizing major words
/// while keeping minor words (articles, prepositions, conjunctions) lowercase,
/// except for the first and last words which are always capitalized.
/// 
/// Examples:
/// - title_case("the quick brown fox") returns "The Quick Brown Fox"
/// - title_case("a tale of two cities") returns "A Tale of Two Cities"
/// - title_case("the lord of the rings") returns "The Lord of the Rings"
/// - title_case("to be or not to be") returns "To Be or Not to Be"
/// - title_case("hello world") returns "Hello World"
/// - title_case("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to convert
/// 
/// # Returns
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
