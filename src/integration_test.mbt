// Integration tests for all case conversions

///|
test "integration - round trip conversions" {
  let original = "HelloWorldExample"

  // Test camelCase conversions
  let camel = camelCase(original)
  assert_eq(camel, "helloWorldExample")
  assert_eq(pascalCase(camel), "HelloWorldExample")

  // Test snake_case conversions
  let snake = snakeCase(original)
  assert_eq(snake, "hello_world_example")
  assert_eq(pascalCase(snake), "HelloWorldExample")

  // Test kebab-case conversions
  let kebab = kebabCase(original)
  assert_eq(kebab, "hello-world-example")
  assert_eq(pascalCase(kebab), "HelloWorldExample")
}

///|
test "integration - all cases from same input" {
  let input = "the quick brown fox"
  assert_eq(camelCase(input), "theQuickBrownFox")
  assert_eq(pascalCase(input), "TheQuickBrownFox")
  assert_eq(snakeCase(input), "the_quick_brown_fox")
  assert_eq(kebabCase(input), "the-quick-brown-fox")
  assert_eq(constantCase(input), "THE_QUICK_BROWN_FOX")
  assert_eq(dotCase(input), "the.quick.brown.fox")
  assert_eq(pathCase(input), "the/quick/brown/fox")
  assert_eq(trainCase(input), "The-Quick-Brown-Fox")
  assert_eq(capitalCase(input), "The Quick Brown Fox")
  assert_eq(sentenceCase(input), "The quick brown fox")
  assert_eq(noCase(input), "the quick brown fox")
}

///|
test "integration - complex mixed input" {
  let input = "XMLHttpRequestV2_test"
  assert_eq(camelCase(input), "xmlHttpRequestV2Test")
  assert_eq(pascalCase(input), "XmlHttpRequestV2Test")
  assert_eq(snakeCase(input), "xml_http_request_v_2_test")
  assert_eq(kebabCase(input), "xml-http-request-v-2-test")
  assert_eq(constantCase(input), "XML_HTTP_REQUEST_V_2_TEST")
}

///|
test "integration - special transformations" {
  let input = "Hello World"
  assert_eq(swapCase(input), "hELLO wORLD")
  assert_eq(swapCase(swapCase(input)), input) // Double swap should return original
  assert_eq(reverseCase(input), "dlroW olleH")
  assert_eq(reverseCase(reverseCase(input)), input) // Double reverse should return original

  // spongeCase and alternatingCase
  let simple = "hello"
  assert_eq(spongeCase(simple), "hElLo")
  assert_eq(alternatingCase(simple), "hElLo")
}

///|
test "integration - title case with articles" {
  assert_eq(titleCase("the lord of the rings"), "The Lord of the Rings")
  assert_eq(titleCase("to be or not to be"), "To Be or Not to Be")
  assert_eq(titleCase("war and peace"), "War and Peace")
}

///|
test "integration - empty and single character" {
  let empty = ""
  let single = "a"

  // All functions should handle empty strings
  assert_eq(camelCase(empty), "")
  assert_eq(pascalCase(empty), "")
  assert_eq(snakeCase(empty), "")
  assert_eq(kebabCase(empty), "")
  assert_eq(constantCase(empty), "")
  assert_eq(swapCase(empty), "")
  assert_eq(reverseCase(empty), "")

  // Single character tests
  assert_eq(camelCase(single), "a")
  assert_eq(pascalCase(single), "A")
  assert_eq(constantCase(single), "A")
  assert_eq(swapCase(single), "A")
  assert_eq(reverseCase(single), "a")
}
