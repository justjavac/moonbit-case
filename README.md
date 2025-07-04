# moonbit-case

Transform strings between different cases: `camelCase`, `PascalCase`, `snake_case`, `kebab-case`, `CONSTANT_CASE`, and many more.

## Installation

```bash
moon update
moon add justjavac/case
```

## Quick Start

```moonbit
// Core case conversions
@case.camel_case("hello world")       // "helloWorld"
@case.pascal_case("hello world")      // "HelloWorld"
@case.snake_case("hello world")       // "hello_world"
@case.kebab_case("hello world")       // "hello-world"
@case.constant_case("hello world")    // "HELLO_WORLD"

// Additional transformations
@case.swap_case("Hello World")        // "hELLO wORLD"
@case.title_case("the lord of rings") // "The Lord of Rings"
@case.reverse_case("hello")           // "olleh"
```

## Real-world Use Cases

```moonbit
// API endpoint conversion
let apiEndpoint = "getUserProfile"
@case.kebab_case(apiEndpoint)        // "get-user-profile" (for URLs)
@case.snake_case(apiEndpoint)        // "get_user_profile" (for database)
@case.constant_case(apiEndpoint)     // "GET_USER_PROFILE" (for constants)

// Configuration keys
let configKey = "databaseConnectionString"
@case.constant_case(configKey)       // "DATABASE_CONNECTION_STRING"
@case.dot_case(configKey)            // "database.connection.string"
```

## Testing

Run the test suite:

```bash
moon test
```

All functions include comprehensive test coverage with edge cases and complex scenarios.

## License

MIT License
