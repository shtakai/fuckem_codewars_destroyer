package main

import (
	"fmt"
	"strconv"
)

func CreatePhoneNumber(numbers [10]uint) string {
	first := join(numbers[:3])
	second := join(numbers[3:6])
	third := join(numbers[6:])

	return fmt.Sprintf("(%s) %s-%s", first, second, third)
}

func join(nums []uint) string {
	var result string

	for _, i := range nums {
		result += strconv.Itoa(int(i))
	}

	return result
}

func main() {
	fmt.Printf("%v\n", CreatePhoneNumber([10]uint{1, 2, 3, 4, 5, 6, 7, 8, 9, 0}))
	fmt.Printf("%v\n", CreatePhoneNumber([10]uint{2, 2, 3, 4, 5, 6, 7, 8, 9, 0}))
}
