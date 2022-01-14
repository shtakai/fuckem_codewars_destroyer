package main

import "fmt"

// func Tribonacci(signature [3]float64, n int) []float64 {
// 	return []float64(signature[:])
// }

// func fibonacci(first, second, third float64) func() float64 {
// 	return func() float64 {
// 		ret := first
// 		first, second, third = second, first+second, first+second+third
// 		return ret
// 	}
// }

// func main() {
// 	result := []float64{}
// 	f := fibonacci(0, 1, 1)
// 	for i := 0; i < 10; i++ {
// 		result = append(result, f())
// 	}
// 	fmt.Println(result)
// }

func Tribonacci(signature [3]float64, n int) (r []float64) {
	r = signature[:]
	for i := 0; i < n; i++ {
		l := len(r)
		r = append(r, r[l-1]+r[l-2]+r[l-3])
	}
	return r[:n]
}
func main() {
	fmt.Println(Tribonacci([3]float64{1, 1, 1}, 10))
	fmt.Println(Tribonacci([3]float64{0, 1, 1}, 10))
	fmt.Println(Tribonacci([3]float64{1, 2, 3}, 10))
	fmt.Println(Tribonacci([3]float64{0.5, 0.5, 0.5}, 30))
}
