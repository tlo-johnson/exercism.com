func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
  return {
    guard $0 == password else { return "Sorry. No hidden secrets here." }
    return secret
  }
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  let first = f(room)
  let second = f(first)
  let third = f(second)
  return (first, second, third)
}
