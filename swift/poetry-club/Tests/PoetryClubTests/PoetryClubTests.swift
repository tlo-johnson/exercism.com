import XCTest

@testable import PoetryClub

final class PoetryClubTests: XCTestCase {
  let runAll =
    Bool(ProcessInfo.processInfo.environment["RUNALL", default: "false"])
    ?? false

  func testSplitNewlines() {
    XCTAssertEqual(
      splitOnNewlines("Winken.\nBlinken\n\nAnd Nod."),
      ["Winken.", "Blinken", "", "And Nod."]
    )
  }

  func testSplitNoNewlines() throws {
    XCTAssertEqual(splitOnNewlines("Hello."), ["Hello."])
  }

  func testFirstLetter() throws {
    XCTAssertEqual(firstLetter("Lorem ipsum"), "L")
  }

  func testFirstLetterEmpty() throws {
    XCTAssertEqual(firstLetter(""), "_")
  }

  func testCapitalize() throws {
    XCTAssertEqual(capitalize("HORSES for CoUrSeS!"), "Horses For Courses!")
  }

  func testTrimWithWhitespace() throws {
    XCTAssertEqual(
      trimSentence("Is all the whitespace gone?   \t  \t"),
      "Is all the whitespace gone?"
    )
  }

  func testTrimWithoutWhitespace() throws {
    XCTAssertEqual(
      trimSentence("Is all the whitespace gone?"),
      "Is all the whitespace gone?"
    )
  }

  func testLastLetter() throws {
    XCTAssertEqual(lastLetter("Lorem ipsum"), "m")
  }

  func testLastLetterEmpty() throws {
    XCTAssertEqual(lastLetter(""), "_")
  }

  func testBackdoorPassword() throws {
    XCTAssertEqual(backDoorPassword("scoobyDOO!"), "Scoobydoo!, please")
  }

  func testIthLetter() throws {
    XCTAssertEqual(ithLetter("Inquisitive", i: 2), "q")
  }

  func testIthLetterInvalid() throws {
    XCTAssertEqual(ithLetter("Inquisitive", i: 100), " ")
  }

  func testSecretRoomPassword() throws {
    XCTAssertEqual(secretRoomPassword("Open Sesame"), "OPEN SESAME!")
  }

  static var allTests = [
    ("testSplitNewlines", testSplitNewlines),
    ("testSplitNoNewlines", testSplitNoNewlines),
    ("testFirstLetter", testFirstLetter),
    ("testFirstLetterEmpty", testFirstLetterEmpty),
    ("testCapitalize", testCapitalize),
    ("testTrimWithWhitespace", testTrimWithWhitespace),
    ("testTrimWithoutWhitespace", testTrimWithoutWhitespace),
    ("testLastLetter", testLastLetter),
    ("testLastLetterEmpty", testLastLetterEmpty),
    ("testBackdoorPassword", testBackdoorPassword),
    ("testIthLetter", testIthLetter),
    ("testIthLetterInvalid", testIthLetterInvalid),
    ("testSecretRoomPassword", testSecretRoomPassword),
  ]
}
