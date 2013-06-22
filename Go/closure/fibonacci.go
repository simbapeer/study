package main

import "fmt"

// fibonacci is a function that returns
// a function that returns an int.
func fibonacci() func() int {
	last := 0
	this := 0
	return func() int {
		switch {
		case last == 0:
			{
				last = 1
				return 1
			}
		case this == 0:
			{
				this = 1
				return 1
			}
		}

		temp := this
		this = last + this
		last = temp
		return this
	}
}

func main() {
	f := fibonacci()
	for i := 0; i < 10; i++ {
		fmt.Println(f())
	}
}
