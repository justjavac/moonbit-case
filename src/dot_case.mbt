///|
/// Convert a string to `dot.case`.
///
/// Detected words are lowercased and joined with periods, which is handy for
/// configuration keys, namespaces, and metric names.
///
/// # Example
///
/// ```mbt check
/// test "dot_case doc example" {
///   assert_eq(dot_case("hello world"), "hello.world")
///   assert_eq(dot_case("databaseConnectionString"), "database.connection.string")
///   assert_eq(dot_case(""), "")
/// }
/// ```
pub fn dot_case(text : String) -> String {
  let words = split(text)
  if words.is_empty() {
    return ""
  }
  let mut result = string_to_lower(words[0])
  for i = 1; i < words.length(); i = i + 1 {
    result = result + "." + string_to_lower(words[i])
  }
  result
}
