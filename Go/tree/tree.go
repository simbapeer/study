package main

import (
	"code.google.com/p/go-tour/tree"
	"fmt"
)

// Walk walks the tree t sending all values
// from the tree to the channel ch.
func Walk(t *tree.Tree, ch chan int) {
	//	fmt.Println("t----", t)
	//	fmt.Println("left-", t.Left)
	//	fmt.Println("right", t.Right)
	//	fmt.Println("value", t.Value)

	if t.Left != nil {
		Walk(t.Left, ch)
	}
	if t.Right != nil {
		Walk(t.Right, ch)
	}

	ch <- t.Value
	return

}

// Same determines whether the trees
// t1 and t2 contain the same values.
func Same(t1, t2 *tree.Tree) bool {
	fmt.Println("Same arg t1:", t1)
	fmt.Println("Same arg t2:", t2)
	ch2, ch1 := make(chan int), make(chan int)
	go Walk(t1, ch1)
	go Walk(t2, ch2)

	for i := 0; i < 10; i++ {
		x, y := <-ch1, <-ch2
		if x != y {
			fmt.Println(x, y)
			return false
		} else {
			//	fmt.Println("ok", x, y)
		}

	}
	fmt.Println("The Same True")
	return true
}

func main() {
	t1 := tree.New(1)
	t2 := tree.New(1)

	fmt.Println(Same(t1, t2))

}
