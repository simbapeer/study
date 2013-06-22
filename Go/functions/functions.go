package main

import "fmt"

func adder() func(int) int {
	sum := 0
	fmt.Println("sum111111111 ", sum);//执行一次
	
	return func(x int) int {
	fmt.Println("sum2 ", sum);
		sum += x
		return sum
	}
}

func main() {
	pos := adder()

	for i := 0; i < 10; i++ {
		fmt.Println(pos(i));
	}
}