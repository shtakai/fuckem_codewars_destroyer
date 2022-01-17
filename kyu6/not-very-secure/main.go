package main

import (
	"fmt"
	"regexp"
	"strings"
)

func alphanumeric(str string) bool {
	words := strings.Split(strings.ToUpper(str), " ")
	r := regexp.MustCompile("^[A-Z0-9]+$")

	for _, word := range words {
		result := r.MatchString(word)
		if !result {
			return false
		}
	}
	return true
}

func main() {
	fmt.Println(alphanumeric("PassW0rd"))     // true
	fmt.Println(alphanumeric("hello world_")) //false
	fmt.Println(alphanumeric(" "))            // false
	fmt.Println(alphanumeric(""))             // false
}
