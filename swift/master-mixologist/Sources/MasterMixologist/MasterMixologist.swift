func timeToPrepare(drinks: [String]) -> Double {
  let times = [
    "beer": 0.5,
    "soda": 0.5,
    "water": 0.5,
    "shot": 1,
    "mixed drink": 1.5,
    "fancy drink": 2.5,
    "frozen drink": 3
  ]

  var sum = 0.0
  for drink in drinks { sum += times[drink, default: 0] }
  return sum
}

func makeWedges(needed: Int, limes: [String]) -> Int {
  var numLimes = 0
  var wedgesNeeded = needed
  while wedgesNeeded > 0 && numLimes < limes.count {
    let lime = limes[numLimes]
    numLimes += 1

    if lime == "small" { wedgesNeeded -= 6 }
    if lime == "medium" { wedgesNeeded -= 8 }
    if lime == "large" { wedgesNeeded -= 10 }
  }
  return numLimes
}
  /*
  let orders = [
    ["beer"], ["water"], ["soda"], ["shot"], ["mixed drink"], ["fancy drink"], ["frozen drink"],
    ["beer", "shot", "fancy drink"],
    ["beer", "shot", "water", "fancy drink", "frozen drink", "fancy drink"],
    ["mixed drink", "water", "soda", "soda", "beer"], Array(repeating: "frozen drink", count: 10),
  ]
  */

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
  var numMinutesLeft = Double(minutesLeft)
  var ordersLeft = remainingOrders

  while numMinutesLeft > 0 && ordersLeft.count > 0 {
    let order = ordersLeft.removeFirst()
    numMinutesLeft -= timeToPrepare(drinks: order)
  }

  return ordersLeft
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
  beer: (first: String, last: String, total: Int)?,
  soda: (first: String, last: String, total: Int)?
) {
  var tracker: (
    beer: (first: String, last: String, total: Int)?,
    soda: (first: String, last: String, total: Int)?
  ) = (beer: nil, soda: nil)

  for (drink, time) in orders {
    if drink != "beer" && drink != "soda" { continue }

    let drinkTracker = drink == "beer" ? tracker.beer : tracker.soda
    if var validDrinkTracker = drinkTracker {
      validDrinkTracker.last = time
      validDrinkTracker.total += 1

      if drink == "beer" {
        tracker.beer = validDrinkTracker
      } else {
        tracker.soda = validDrinkTracker
      }
    } else {
      if drink == "beer" {
        tracker.beer = (first: time, last: time, total: 1)
      } else {
        tracker.soda = (first: time, last: time, total: 1)
      }
    }
  }

  return tracker
}
