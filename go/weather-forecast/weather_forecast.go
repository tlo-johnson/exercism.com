// Package weather forecasts the current weather condition of various cities in Goblinocus.
package weather

// CurrentCondition stores the current weather condition.
var CurrentCondition string

// CurrentLocation stores the current location.
var CurrentLocation string

// Forecast prints out the current conditions for a city in Goblinocus.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
