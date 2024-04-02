// TODO: Define the Position struct
struct Size {
  var width = 80
  var height = 60

  mutating func resize(newWidth: Int, newHeight: Int) {
    width = newWidth
    height = newHeight
  }
}

// TODO: Define the Size struct
struct Position {
  var x = 0
  var y = 0

  mutating func moveTo(newX: Int, newY: Int) {
    x = newX
    y = newY
  }
}

// TODO: Define the Window class
class Window {
  var title = "New Window"
  let screenSize = Size(width: 800, height: 600)
  var size = Size()
  var position = Position()
  var contents: String?

  func resize(to newSize: Size) {
    var width = max(1, newSize.width)
    width = min(width, screenSize.width - position.x)

    var height = max(1, newSize.height)
    height = min(height, screenSize.height - position.y)

    size.resize(newWidth: width, newHeight: height)
  }

  func move(to newPosition: Position) {
    var x = max(0, newPosition.x)
    x = min(x, screenSize.width - size.width)

    var y = max(0, newPosition.y)
    y = min(y, screenSize.height - size.height)

    position.moveTo(newX: x, newY: y)
  }

  func update(title: String) {
    self.title = title
  }

  func update(text: String?) {
    contents = text
  }

  func display() -> String {
    let defaultContents = "[This window intentionally left blank]"
    return "\(title)\nPosition: (\(position.x), \(position.y)), Size: (\(size.width) x \(size.height))\n\(contents ?? defaultContents)\n"
  }
}

let mainWindow = {
  let window = Window()
  window.update(title: "Main Window")
  window.resize(to: Size(width: 400, height: 300))
  window.move(to: Position(x: 100, y:100))
  window.update(text: "This is the main window")

  return window
}()
