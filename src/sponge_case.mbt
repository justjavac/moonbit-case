///| Convert string to spongeCase (alternating capitalization).
/// 
/// Transforms the input string to spongeCase by alternating between lowercase
/// and uppercase for each letter, mimicking the "mocking SpongeBob" meme format.
/// Non-alphabetic characters are preserved as-is and don't affect the alternation.
/// 
/// Examples:
/// - sponge_case("hello world") returns "hElLo WoRlD"
/// - sponge_case("test string") returns "tEsT sTrInG"
/// - sponge_case("hello") returns "hElLo"
/// - sponge_case("test123value") returns "tEsT123vAlUe"
/// - sponge_case("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to transform
/// 
/// # Returns
/// The string with alternating case applied
pub fn sponge_case(text : String) -> String {
  let chars = text.to_array()
  let mut result = ""
  let mut should_uppercase = false
  for i = 0; i < chars.length(); i = i + 1 {
    let char = chars[i]
    if is_letter(char) {
      if should_uppercase {
        result = result + to_uppercase(char).to_string()
      } else {
        result = result + to_lowercase(char).to_string()
      }
      should_uppercase = not(should_uppercase)
    } else {
      result = result + char.to_string()
    }
  }
  result
}
