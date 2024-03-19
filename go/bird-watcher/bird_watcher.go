package birdwatcher

// TotalBirdCount return the total bird count by summing
// the individual day's counts.
func TotalBirdCount(birdsPerDay []int) int {
  sum := 0
  for count := 0; count < len(birdsPerDay); count++ {
    sum += birdsPerDay[count]
  }
  return sum
}

// BirdsInWeek returns the total bird count by summing
// only the items belonging to the given week.
func BirdsInWeek(birdsPerDay []int, week int) int {
  sum := 0
  for count := 0; count < len(birdsPerDay); count++ {
    if count / 7 == week - 1 {
      sum += birdsPerDay[count]
    }
  }
  return sum
}

// FixBirdCountLog returns the bird counts after correcting
// the bird counts for alternate days.
func FixBirdCountLog(birdsPerDay []int) []int {
  for count := 0; count < len(birdsPerDay); count++ {
    if count % 2 == 0 {
      birdsPerDay[count] += 1
    }
  }
  return birdsPerDay
}
