package main

import (
	"fmt"
)

type ErrNegativeSqrt struct {
	errArg float64
}

func (e *ErrNegativeSqrt) Error() string {
//	fmt.Print(float64(e))
	return "cannot Sqrt negative number"
}

func Sqrt(x float64) (float64, error) {

	if x < 0 {
		e := &ErrNegativeSqrt{x}
//		var e *ErrNegativeSqrt = &ErrNegativeSqrt{x}
		e.errArg = x
		return 0, e
		/*
		var e ErrNegativeSqrt
		e.errArg = x
		return 0, &e

		*/
		
	}

	var z float64 = 3
	var temp float64
	for i := 0; ; i++ {
		temp = z
		z = (z - (z*z-x)/(2*z))
		temp = temp - z
		temp = temp * temp
		if temp < 1e-20 {
			println(i)
			break
		}
	}
	return z, nil
}

func main() {

	fmt.Println(Sqrt(2))
	fmt.Println(Sqrt(-2))
}
