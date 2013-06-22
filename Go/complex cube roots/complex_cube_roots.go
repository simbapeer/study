package main

import (
	"fmt"
	"math/cmplx"
)

func Cbrt(x complex128) complex128 {
	z := complex128(3)
	for i := 0; i < 100; i++ {
		temp := z
		z = z - (cmplx.Pow(z, 3)-x)/(3*cmplx.Pow(z, 2))
		temp = (z - temp)
		temp = temp * temp
	}
	return z
}

func main() {
	fmt.Println(Cbrt(3323232322 + 0i))
}