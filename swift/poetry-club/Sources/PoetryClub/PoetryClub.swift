import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
  poem.components(separatedBy: "\n")
}

func firstLetter(_ line: String) -> Character {
  guard let letter = line.first else { return "_" }
  return letter
}

func capitalize(_ phrase: String) -> String {
  phrase.capitalized(with: nil)
}

func trimSentence(_ line: String) -> String {
  line.trimmingCharacters(in: .whitespacesAndNewlines)
}

func lastLetter(_ line: String) -> Character {
  guard let letter = line.last else { return "_" }
  return letter
}

func backDoorPassword(_ phrase: String) -> String {
  "\(capitalize(phrase)), please"
}

func ithLetter(_ line: String, i: Int) -> Character {
  guard let index = line.index(line.startIndex, offsetBy: i, limitedBy: line.endIndex) else { return " " }
  return line[index]
}

func secretRoomPassword(_ phrase: String) -> String {
  phrase.uppercased() + "!"
}
