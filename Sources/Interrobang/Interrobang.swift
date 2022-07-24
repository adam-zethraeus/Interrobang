public struct OptionalUnwrapError<Wrapped>: Error, CustomStringConvertible {
    public var description: String {
        "Optional<\(Wrapped.self)> could not be unwrapped‽"
    }
}

postfix operator ‽
public extension Optional {
    static postfix func ‽ (optional: Optional<Wrapped>) throws -> Wrapped {
        guard let wrappedValue = optional
        else { throw OptionalUnwrapError<Wrapped>() }
        return wrappedValue
    }
}

postfix operator ‽‽
public extension Optional {
    static postfix func ‽‽ (optional: Optional<Wrapped>) -> Wrapped {
        guard let wrappedValue = optional
        else { fatalError("Optional<\(Wrapped.self)> could not be unwrapped‽‽") }
        return wrappedValue
    }
}
