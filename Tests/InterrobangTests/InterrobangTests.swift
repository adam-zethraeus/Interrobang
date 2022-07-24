import XCTest
@testable import Interrobang

final class InterrobangTests: XCTestCase {

    struct Shocking: Equatable {}

    func testThrowing() throws {
        let shockHorror: Optional<Shocking> = .none
        XCTAssertThrowsError(try shockHorror‽, "I'm shocked!") { error in
            XCTAssertEqual(
                "\(error)",
                "Optional<Shocking> could not be unwrapped‽"
            )
        }
    }

    func testFatalError() throws {
        // let shockHorror: Optional<Shocking> = .none
        // XCTAssertNotEqual(shockHorror‽‽, .none)
    }

}
