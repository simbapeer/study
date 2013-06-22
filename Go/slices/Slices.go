package main

import "code.google.com/p/go-tour/pic"
import "fmt"

func Pic(dx, dy int) [][]uint8 {
	var ret [][]uint8 = make([][]uint8, dy)
	for i := 0; i < dy; i++ {
		ret[i] = make([]uint8, 8)
		for j := 0; j < 8; j++ {
			ret[i][j] = uint8((dx >> uint(j)) & 1)
		}

	}
	return ret
}

func main() {
	fmt.Println(Pic(3, 2))
	pic.Show(Pic(3, 2))
}
