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

## Real-world Use Cases

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

## License

MIT License
