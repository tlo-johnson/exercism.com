func getCard(at index: Int, from stack: [Int]) -> Int {
  return stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
  guard index >= 0, index < stack.count else { return stack }
  var clone = stack
  clone[index] = newCard
  return clone
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
  var clone = stack
  clone.append(newCard)
  return clone
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
  guard index >= 0, index < stack.count else { return stack }

  var clone = stack
  clone.remove(at: index)
  return clone
}

func removeTopCard(_ stack: [Int]) -> [Int] {
  guard !stack.isEmpty else { return stack }

  var clone = stack
  clone.removeLast()
  return clone
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
  var clone = stack
  clone.insert(newCard, at: 0)
  return clone
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
  guard !stack.isEmpty else { return stack }

  var clone = stack
  clone.removeFirst()
  return clone
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  return stack.count == size
}

func evenCardCount(_ stack: [Int]) -> Int {
  let isEven = { card in card % 2 == 0 }
  return stack.filter(isEven).count
}
