package booking

import "time"
import "fmt"

// Schedule returns a time.Time from a string containing a date.
func Schedule(date string) time.Time {
  layout := "1/2/2006 15:04:05"
  result, _ := time.Parse(layout, date)
  return result
}

// HasPassed returns whether a date has passed.
func HasPassed(date string) bool {
  layout := "January 2, 2006 15:04:05"
  parsedDate, _ := time.Parse(layout, date)
  return parsedDate.Before(time.Now())
}

// IsAfternoonAppointment returns whether a time is in the afternoon.
func IsAfternoonAppointment(date string) bool {
  layout := "Monday, January 2, 2006 15:04:05"
  scheduleDate, _ := time.Parse(layout, date)
  return scheduleDate.Hour() >= 12 && scheduleDate.Hour() < 18
}

// Description returns a formatted string of the appointment time.
func Description(date string) string {
  scheduleDate := Schedule(date)
  return fmt.Sprintf("You have an appointment on %s.", scheduleDate.Format("Monday, January 2, 2006, at 15:04"))
}

// AnniversaryDate returns a Time with this year's anniversary.
func AnniversaryDate() time.Time {
  layout := "January 2, 2006"
  date := fmt.Sprintf("September 15, %d", time.Now().Year())
  result, _ := time.Parse(layout, date)
  return result;
}
