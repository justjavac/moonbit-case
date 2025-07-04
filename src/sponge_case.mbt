///| Convert string to spongeCase (alternating capitalization).
/// 
/// Transforms the input string to spongeCase by alternating between lowercase
/// and uppercase for each letter, mimicking the "mocking SpongeBob" meme format.
/// Non-alphabetic characters are preserved as-is and don't affect the alternation.
/// 
/// # Parameters
/// - `text`: The input string to transform
/// 
/// # Returns
/// The string with alternating case applied
/// 
/// # Examples
/// 
/// ```moonbit
/// let str = @case.sponge_case("hello world")
/// assert_eq(str, "hElLo WoRlD")
/// 
/// let str = @case.sponge_case("test string")
/// assert_eq(str, "tEsT sTrInG")
///
/// let str = @case.sponge_case("hello")
/// assert_eq(str, "hElLo")
///
/// let str = @case.sponge_case("test123value")
/// assert_eq(str, "tEsT123vAlUe")
///
/// let str = @case.sponge_case("")
/// assert_eq(str, "")
/// ```
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
