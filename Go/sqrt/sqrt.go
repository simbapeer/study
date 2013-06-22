package main

import (
	"fmt"
)

func Sqrt(x float64) float64 {
	var z float64 = 3
	var temp float64
	for i := 0; ; i++ {
		temp = z
		z = (z - (z*z-x)/(2*z))
		temp = temp - z
		temp = temp * temp
		if temp < 1e-20 {
			println(i);
			break
		}
	}
	return z
}

func main() {
	fmt.Println(Sqrt(5))
}