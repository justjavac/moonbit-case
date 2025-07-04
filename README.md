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
camelCase("hello world")       // "helloWorld"
pascalCase("hello world")      // "HelloWorld"
snakeCase("hello world")       // "hello_world"
kebabCase("hello world")       // "hello-world"
constantCase("hello world")    // "HELLO_WORLD"

// Additional transformations
swapCase("Hello World")        // "hELLO wORLD"
titleCase("the lord of rings") // "The Lord of Rings"
reverseCase("hello")           // "olleh"
```

## API Reference

### Core Case Conversions

#### `camelCase(text : String) -> String`

Convert string to camelCase.

```moonbit
camelCase("hello world")      // "helloWorld"
camelCase("Hello-World")      // "helloWorld"
camelCase("HELLO_WORLD")      // "helloWorld"
```

#### `pascalCase(text : String) -> String`

Convert string to PascalCase (UpperCamelCase).

```moonbit
pascalCase("hello world")     // "HelloWorld"
pascalCase("hello-world")     // "HelloWorld"
pascalCase("HELLO_WORLD")     // "HelloWorld"
```

#### `snakeCase(text : String) -> String`

Convert string to snake_case.

```moonbit
snakeCase("hello world")      // "hello_world"
snakeCase("HelloWorld")       // "hello_world"
snakeCase("hello-world")      // "hello_world"
```

#### `kebabCase(text : String) -> String`

Convert string to kebab-case (param-case).

```moonbit
kebabCase("hello world")      // "hello-world"
kebabCase("HelloWorld")       // "hello-world"
kebabCase("hello_world")      // "hello-world"
```

#### `constantCase(text : String) -> String`

Convert string to CONSTANT_CASE (SCREAMING_SNAKE_CASE).

```moonbit
constantCase("hello world")   // "HELLO_WORLD"
constantCase("HelloWorld")    // "HELLO_WORLD"
constantCase("hello-world")   // "HELLO_WORLD"
```

#### `dotCase(text : String) -> String`

Convert string to dot.case.

```moonbit
dotCase("hello world")        // "hello.world"
dotCase("HelloWorld")         // "hello.world"
dotCase("hello_world")        // "hello.world"
```

#### `pathCase(text : String) -> String`

Convert string to path/case.

```moonbit
pathCase("hello world")       // "hello/world"
pathCase("HelloWorld")        // "hello/world"
pathCase("hello_world")       // "hello/world"
```

#### `trainCase(text : String) -> String`

Convert string to Train-Case (HTTP-Header-Case).

```moonbit
trainCase("hello world")      // "Hello-World"
trainCase("HelloWorld")       // "Hello-World"
trainCase("hello_world")      // "Hello-World"
```

#### `capitalCase(text : String) -> String`

Convert string to Capital Case.

```moonbit
capitalCase("hello world")    // "Hello World"
capitalCase("HelloWorld")     // "Hello World"
capitalCase("hello_world")    // "Hello World"
```

#### `sentenceCase(text : String) -> String`

Convert string to Sentence case.

```moonbit
sentenceCase("hello world")   // "Hello world"
sentenceCase("HelloWorld")    // "Hello world"
sentenceCase("hello_world")   // "Hello world"
```

#### `noCase(text : String) -> String`

Convert string to no case (lowercase with spaces).

```moonbit
noCase("hello world")         // "hello world"
noCase("HelloWorld")          // "hello world"
noCase("hello_world")         // "hello world"
```

### Special Transformations

#### `swapCase(text : String) -> String`

Swap the case of each character.

```moonbit
swapCase("Hello World")       // "hELLO wORLD"
swapCase("hELLO wORLD")       // "Hello World"
swapCase("CamelCase")         // "cAMELcASE"
```

#### `spongeCase(text : String) -> String`

Convert to alternating case (SpongeBob mocking meme style).

```moonbit
spongeCase("hello world")     // "hElLo WoRlD"
spongeCase("test string")     // "tEsT sTrInG"
```

#### `titleCase(text : String) -> String`

Convert to proper title case with English grammar rules.

```moonbit
titleCase("the lord of the rings")  // "The Lord of the Rings"
titleCase("to be or not to be")      // "To Be or Not to Be"
titleCase("war and peace")           // "War and Peace"
```

#### `alternatingCase(text : String) -> String`

Alternate between lowercase and uppercase for each letter.

```moonbit
alternatingCase("hello")      // "hElLo"
alternatingCase("hello world") // "hElLo WoRlD"
```

#### `reverseCase(text : String) -> String`

Reverse the order of characters in the string.

```moonbit
reverseCase("hello")          // "olleh"
reverseCase("hello world")    // "dlrow olleh"
reverseCase("MoonBit")        // "tibnooM"
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
snakeCase(complex)            // "xml_http_request_v_2"
kebabCase(complex)            // "xml-http-request-v-2"
constantCase(complex)         // "XML_HTTP_REQUEST_V_2"

// Handle mixed separators
let mixed = "hello-world_test.case"
camelCase(mixed)              // "helloWorldTestCase"
pascalCase(mixed)             // "HelloWorldTestCase"
```

### Round-trip Conversions

```moonbit
let original = "HelloWorldExample"
let snake = snakeCase(original)     // "hello_world_example"
let backToPascal = pascalCase(snake) // "HelloWorldExample"
// backToPascal == original
```

### Real-world Use Cases

```moonbit
// API endpoint conversion
let apiEndpoint = "getUserProfile"
kebabCase(apiEndpoint)        // "get-user-profile" (for URLs)
snakeCase(apiEndpoint)        // "get_user_profile" (for database)
constantCase(apiEndpoint)     // "GET_USER_PROFILE" (for constants)

// Configuration keys
let configKey = "databaseConnectionString"
constantCase(configKey)       // "DATABASE_CONNECTION_STRING"
dotCase(configKey)            // "database.connection.string"
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
