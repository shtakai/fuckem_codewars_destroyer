package main

import "fmt"

func Tribonacci(signature [3]float64, n int) []float64 {
	return []float64(signature[:])
}

func fibonacci(first, second, third float64) func() float64 {
	return func() float64 {
		ret := first
		first, second, third = second, first+second, first+second+third
		return ret
	}
}

func main() {
	result := []float64{}
	f := fibonacci(0, 1, 1)
	for i := 0; i < 10; i++ {
		result = append(result, f())
	}
	fmt.Println(result)
}

// func main() {
// 	fmt.Println(Tribonacci([3]float64{1, 1, 1}, 10))
// 	// fmt.Println(Tribonacci([3]float64{0, 1, 1}, 10))
// 	// fmt.Println(Tribonacci([3]float64{1, 2, 3}, 10))
// 	// fmt.Println(Tribonacci([3]float64{0.5, 0.5, 0.5}, 30))
// }
