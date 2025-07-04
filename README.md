# moonbit-case

[![CI](https://github.com/justjavac/moonbit-case/actions/workflows/ci.yml/badge.svg)](https://github.com/justjavac/moonbit-case/actions/workflows/ci.yml)

Transform strings between different cases: `camelCase`, `PascalCase`, `snake_case`, `kebab-case`, `CONSTANT_CASE`, and many more.

## Installation

```bash
moon update
moon add justjavac/case
```

## Quick Start

```moonbit
// Core case conversions
camel_case("hello world")       // "helloWorld"
pascal_case("hello world")      // "HelloWorld"
snake_case("hello world")       // "hello_world"
kebab_case("hello world")       // "hello-world"
constant_case("hello world")    // "HELLO_WORLD"

// Additional transformations
swap_case("Hello World")        // "hELLO wORLD"
title_case("the lord of rings") // "The Lord of Rings"
reverse_case("hello")           // "olleh"
```

## API Reference

### Core Case Conversions

#### `camel_case(text : String) -> String`

Convert string to camelCase.

```moonbit
camel_case("hello world")      // "helloWorld"
camel_case("Hello-World")      // "helloWorld"
camel_case("HELLO_WORLD")      // "helloWorld"
```

#### `pascal_case(text : String) -> String`

Convert string to PascalCase (UpperCamelCase).

```moonbit
pascal_case("hello world")     // "HelloWorld"
pascal_case("hello-world")     // "HelloWorld"
pascal_case("HELLO_WORLD")     // "HelloWorld"
```

#### `snake_case(text : String) -> String`

Convert string to snake_case.

```moonbit
snake_case("hello world")      // "hello_world"
snake_case("HelloWorld")       // "hello_world"
snake_case("hello-world")      // "hello_world"
```

#### `kebab_case(text : String) -> String`

Convert string to kebab-case (param-case).

```moonbit
kebab_case("hello world")      // "hello-world"
kebab_case("HelloWorld")       // "hello-world"
kebab_case("hello_world")      // "hello-world"
```

#### `constant_case(text : String) -> String`

Convert string to CONSTANT_CASE (SCREAMING_SNAKE_CASE).

```moonbit
constant_case("hello world")   // "HELLO_WORLD"
constant_case("HelloWorld")    // "HELLO_WORLD"
constant_case("hello-world")   // "HELLO_WORLD"
```

#### `dot_case(text : String) -> String`

Convert string to dot.case.

```moonbit
dot_case("hello world")        // "hello.world"
dot_case("HelloWorld")         // "hello.world"
dot_case("hello_world")        // "hello.world"
```

#### `path_case(text : String) -> String`

Convert string to path/case.

```moonbit
path_case("hello world")       // "hello/world"
path_case("HelloWorld")        // "hello/world"
path_case("hello_world")       // "hello/world"
```

#### `train_case(text : String) -> String`

Convert string to Train-Case (HTTP-Header-Case).

```moonbit
train_case("hello world")      // "Hello-World"
train_case("HelloWorld")       // "Hello-World"
train_case("hello_world")      // "Hello-World"
```

#### `capital_case(text : String) -> String`

Convert string to Capital Case.

```moonbit
capital_case("hello world")    // "Hello World"
capital_case("HelloWorld")     // "Hello World"
capital_case("hello_world")    // "Hello World"
```

#### `sentence_case(text : String) -> String`

Convert string to Sentence case.

```moonbit
sentence_case("hello world")   // "Hello world"
sentence_case("HelloWorld")    // "Hello world"
sentence_case("hello_world")   // "Hello world"
```

#### `no_case(text : String) -> String`

Convert string to no case (lowercase with spaces).

```moonbit
no_case("hello world")         // "hello world"
no_case("HelloWorld")          // "hello world"
no_case("hello_world")         // "hello world"
```

### Special Transformations

#### `swap_case(text : String) -> String`

Swap the case of each character.

```moonbit
swap_case("Hello World")       // "hELLO wORLD"
swap_case("hELLO wORLD")       // "Hello World"
swap_case("CamelCase")         // "cAMELcASE"
```

#### `sponge_case(text : String) -> String`

Convert to alternating case (SpongeBob mocking meme style).

```moonbit
sponge_case("hello world")     // "hElLo WoRlD"
sponge_case("test string")     // "tEsT sTrInG"
```

#### `title_case(text : String) -> String`

Convert to proper title case with English grammar rules.

```moonbit
title_case("the lord of the rings")  // "The Lord of the Rings"
title_case("to be or not to be")      // "To Be or Not to Be"
title_case("war and peace")           // "War and Peace"
```

#### `alternating_case(text : String) -> String`

Alternate between lowercase and uppercase for each letter.

```moonbit
alternating_case("hello")      // "hElLo"
alternating_case("hello world") // "hElLo WoRlD"
```

#### `reverse_case(text : String) -> String`

Reverse the order of characters in the string.

```moonbit
reverse_case("hello")          // "olleh"
reverse_case("hello world")    // "dlrow olleh"
reverse_case("MoonBit")        // "tibnooM"
```

### Utility Functions

#### `split(text : String) -> Array[String]`

Split a string into words by detecting case boundaries and separators.

```moonbit
split("helloWorld")           // ["hello", "World"]
split("hello_world")          // ["hello", "world"]
split("XMLHttpRequest")       // ["XML", "Http", "Request"]
```

#### `string_to_upper(text : String) -> String`

Convert entire string to uppercase.

```moonbit
string_to_upper("hello")      // "HELLO"
string_to_upper("Hello World") // "HELLO WORLD"
```

#### `string_to_lower(text : String) -> String`

Convert entire string to lowercase.

```moonbit
string_to_lower("HELLO")      // "hello"
string_to_lower("Hello World") // "hello world"
```

#### `capitalize(text : String) -> String`

Capitalize the first character of a string.

```moonbit
capitalize("hello")           // "Hello"
capitalize("test")            // "Test"
```

## Advanced Examples

### Complex Input Handling

```moonbit
// Handle complex camelCase
let complex = "XMLHttpRequestV2"
snake_case(complex)            // "xml_http_request_v_2"
kebab_case(complex)            // "xml-http-request-v-2"
constant_case(complex)         // "XML_HTTP_REQUEST_V_2"

// Handle mixed separators
let mixed = "hello-world_test.case"
camel_case(mixed)              // "helloWorldTestCase"
pascal_case(mixed)             // "HelloWorldTestCase"
```

### Round-trip Conversions

```moonbit
let original = "HelloWorldExample"
let snake = snake_case(original)     // "hello_world_example"
let backToPascal = pascal_case(snake) // "HelloWorldExample"
// backToPascal == original
```

### Real-world Use Cases

```moonbit
// API endpoint conversion
let apiEndpoint = "getUserProfile"
kebab_case(apiEndpoint)        // "get-user-profile" (for URLs)
snake_case(apiEndpoint)        // "get_user_profile" (for database)
constant_case(apiEndpoint)     // "GET_USER_PROFILE" (for constants)

// Configuration keys
let configKey = "databaseConnectionString"
constant_case(configKey)       // "DATABASE_CONNECTION_STRING"
dot_case(configKey)            // "database.connection.string"
```

## Testing

Run the test suite:

```bash
moon test
```

All functions include comprehensive test coverage with edge cases and complex scenarios.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

MIT License
