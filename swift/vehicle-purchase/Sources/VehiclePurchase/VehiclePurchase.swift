func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  let numMonthsInYear = 12.0
  let numYearsOfPromotion = 5.0
  let monthlyCost = price / numMonthsInYear / numYearsOfPromotion

  return monthlyCost <= monthlyBudget ? "Yes! I'm getting a \(vehicle)" :
    monthlyCost <= 1.1 * monthlyBudget ? "I'll have to be frugal if I want a \(vehicle)" :
    "Darn! No \(vehicle) for me"
}

func licenseType(numberOfWheels wheels: Int) -> String {
  return wheels == 2 || wheels == 3 ? "You will need a motorcycle license for your vehicle" :
    wheels == 4 || wheels == 6 ? "You will need an automobile license for your vehicle" :
    wheels == 18 ? "You will need a commercial trucking license for your vehicle" :
    "We do not issue licenses for those types of vehicles"
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
  let price = yearsOld >= 10 ? 0.5 * Double(originalPrice) :
    yearsOld >= 3 ? 0.7 * Double(originalPrice) :
    0.8 * Double(originalPrice)

  return Int(price)
}
