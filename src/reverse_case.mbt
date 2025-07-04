///| Reverse the order of characters in a string.
/// 
/// Transforms the input string by reversing the order of all characters,
/// effectively creating a mirror image of the original string.
/// 
/// Examples:
/// - reverse_case("hello") returns "olleh"
/// - reverse_case("hello world") returns "dlrow olleh"
/// - reverse_case("Test123") returns "321tseT"
/// - reverse_case("MoonBit") returns "tibnooM"
/// - reverse_case("") returns ""
/// 
/// # Parameters
/// - `text`: The input string to reverse
/// 
/// # Returns
/// The string with characters in reverse order
pub fn reverse_case(text : String) -> String {
  let chars = text.to_array()
  let mut result = ""
  for i = chars.length() - 1; i >= 0; i = i - 1 {
    result = result + chars[i].to_string()
  }
  result
}
