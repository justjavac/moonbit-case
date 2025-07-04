///| Reverse the order of characters in a string.
/// 
/// Transforms the input string by reversing the order of all characters,
/// effectively creating a mirror image of the original string.
/// 
/// # Examples
/// 
/// ```moonbit
/// let str = reverse_case("hello")
/// assert_eq(str, "olleh")
/// 
/// let str = reverse_case("hello world")
/// assert_eq(str, "dlrow olleh")
///
/// let str = reverse_case("Test123")
/// assert_eq(str, "321tseT")
///
/// let str = reverse_case("MoonBit")
/// assert_eq(str, "tiBnooM")
///
/// let str = reverse_case("")
/// assert_eq(str, "")
/// ```
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
