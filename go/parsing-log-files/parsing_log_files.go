package parsinglogfiles

import (
  "regexp"
  "fmt"
)

func IsValidLine(text string) bool {
  pattern := regexp.MustCompile(`^\[(TRC|DBG|INF|WRN|ERR|FTL)]`)
  return pattern.MatchString(text)
}

func SplitLogLine(text string) []string {
  pattern := regexp.MustCompile(`<[~*=-]*>`)
  return pattern.Split(text, -1)
}

func CountQuotedPasswords(lines []string) int {
  pattern := regexp.MustCompile(`(?i)".*password.*"`)
  count := 0
  for _, line := range lines {
    if pattern.MatchString(line) {
      count++
    }
  }
  return count
}

func RemoveEndOfLineText(text string) string {
  pattern := regexp.MustCompile(`end-of-line\d+`)
  return pattern.ReplaceAllString(text, "")
}

func TagWithUserName(lines []string) []string {
  pattern := regexp.MustCompile(`User +(\w+)`)
  var result []string

  for _, line := range lines {
    match := pattern.FindStringSubmatch(line)
    if match == nil {
      result = append(result, line)
    } else {
      result = append(result, fmt.Sprintf("[USR] %s %s", match[1], line))
    }
  }

  return result
}
