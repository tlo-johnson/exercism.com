// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
  return expectedMinutesInOven - elapsedMinutes
}

// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers: String...) -> Int {
  let timePerLayer = 2
  return timePerLayer * layers.count
}

// TODO: define the 'quantities' function
func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
  let noodlesPerLayer = 3
  let noodleLayers = layers.filter({ $0 == "noodles" }).count

  let saucePerLayer = 0.2
  let sauceLayers = layers.filter({ $0 == "sauce" }).count

  return (noodles: noodlesPerLayer * noodleLayers, sauce: saucePerLayer * Double(sauceLayers))
}

// TODO: define the 'toOz' function
func toOz(_ amount: inout (noodles: Int, sauce: Double)) {
  amount.sauce *= 33.814
}

// TODO: define the 'redWine' function
func redWine(layers: String...) -> Bool {
  func numMozzarellaLayers() -> Int {
    return layers.filter({ $0 == "mozzarella" }).count
  }

  func numRicottaLayers() -> Int {
    return layers.filter({ $0 == "ricotta" }).count
  }

  func numBechamelLayers() -> Int {
    return layers.filter({ $0 == "béchamel" }).count
  }

  func numSauceLayers() -> Int {
    return layers.filter({ $0 == "sauce" }).count
  }

  func numMeatLayers() -> Int {
    return layers.filter({ $0 == "meat" }).count
  }

  return numMozzarellaLayers() + numRicottaLayers() + numBechamelLayers() <= numMeatLayers() + numSauceLayers()
}
