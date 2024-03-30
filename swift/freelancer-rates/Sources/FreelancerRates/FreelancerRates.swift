let workingHoursInDay = 8.0
let workingDaysInMonth = 22.0

func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate) * workingHoursInDay
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let discountedRate = Double(hourlyRate) * (1.0 - discount / 100)
  return (discountedRate * workingHoursInDay * workingDaysInMonth).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let discountedRate = Double(hourlyRate) * (1.0 - discount / 100)
  return (budget / (discountedRate * workingHoursInDay)).rounded(.down)
}
