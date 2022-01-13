package main

import (
	"fmt"
	"regexp"
	"strconv"
	"strings"
)

func StockList(listArt []string, listCat []string) string {
	if len(listArt) == 0 || len(listCat) == 0 {
		return ""
	}

	stockMap := make(map[string]int)
	for _, v := range listArt {
		key, value := parseStock(v)
		stockMap[key[:1]] += value
	}

	var result []string

	for _, v := range listCat {
		result = append(result, fmt.Sprintf("(%s : %d)", v, stockMap[v]))
	}

	return fmt.Sprintln(strings.Join(result, " - "))
}

func parseStock(x string) (string, int) {
	re1 := regexp.MustCompile(`\w+`)
	a := string(re1.Find([]byte(x)))
	re2 := regexp.MustCompile(`\d+`)
	b := string(re2.Find([]byte(x)))
	res, _ := strconv.Atoi(b)
	return a, res
}

func main() {
	var b = []string{"ABAR 200", "CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"}
	var c = []string{"A", "B"}
	// var c = []string{"A", "B", "C", "D"}
	fmt.Print(StockList(b, c))
}
