package lasagna

// TODO: define the 'PreparationTime()' function
func PreparationTime(layers []string, preparationTime int) int {
  if (preparationTime == 0) {
    preparationTime = 2
  }

  return len(layers) * preparationTime;
}

// TODO: define the 'Quantities()' function
func Quantities(layers []string) (noodles int, sauce float64) {
  for index := 0; index < len(layers); index++ {
    if layers[index] == "noodles" {
      noodles += 50
    }

    if layers[index] == "sauce" {
      sauce += 0.2
    }
  }

  return
}

// TODO: define the 'AddSecretIngredient()' function
func AddSecretIngredient(friendRecipe, myRecipe []string) {
  myRecipe[len(myRecipe) - 1] = friendRecipe[len(friendRecipe) - 1]
}

// TODO: define the 'ScaleRecipe()' function
func ScaleRecipe(quantities []float64, numPortions int) []float64 {
  multiplier := float64(numPortions) / 2

  var scaledQuantities []float64
  for index := 0; index < len(quantities); index++ {
    scaledQuantities = append(scaledQuantities, quantities[index] * multiplier)
  }

  return scaledQuantities
}

// Your first steps could be to read through the tasks, and create
// these functions with their correct parameter lists and return types.
// The function body only needs to contain `panic("")`.
// 
// This will make the tests compile, but they will fail.
// You can then implement the function logic one by one and see
// an increasing number of tests passing as you implement more 
// functionality.
