package purchase

// NeedsLicense determines whether a license is needed to drive a type of vehicle. Only "car" and "truck" require a license.
func NeedsLicense(kind string) bool {
  return kind == "car" || kind == "truck"
}

// ChooseVehicle recommends a vehicle for selection. It always recommends the vehicle that comes first in lexicographical order.
func ChooseVehicle(option1, option2 string) string {
  var recommendation string

  if (option1 < option2) {
    recommendation = option1
  } else {
    recommendation = option2
  }

  return recommendation + " is clearly the better choice."
}

// CalculateResellPrice calculates how much a vehicle can resell for at a certain age.
func CalculateResellPrice(originalPrice, age float64) float64 {
  var percentage float64
  if age < 3 {
    percentage = 0.8
  } else if age >= 10 {
    percentage = 0.5
  } else {
    percentage = 0.7
  }

  return percentage * originalPrice
}
