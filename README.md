# Interrobang

Optional unwrapping for typography nerds‽

## Usage:

```swift
// Package.swift

dependencies: [
    .package(
        url: "https://github.com/adam-zethraeus/Interrobang.git",
        .upToNextMajor(from: "1.0.0")
    )
],
```

```swift

struct Shocking: Equatable {}
let shockHorror: Optional<Shocking> = .none

do {
    try shockHorror‽
} catch is OptionalUnwrapError {
    print("\(error)")
    // "Optional<Shocking> could not be unwrapped‽"
} catch {}

shockHorror‽‽
// Fatal error: Optional<Shocking> could not be unwrapped‽‽

```
