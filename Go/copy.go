package main

func main() {
	var a = [...]int{0, 1, 2, 3, 4, 5, 6, 7}
	var s = make([]int, 6)
	n1 := copy(s, a[0:])
	printSlice(s)
	n2 := copy(s, s[2:])
	printSlice(s)

	println("n1:", n1, "n2:", n2)
	printSlice(s)

	
	s2 := make([]int, 8)
	copy(s2, a[0:])
	copy(s2[2:6], s2[0:4])
	printSlice(s2)		//1

}

func printArray(arr [8]int) {
	for _, i := range arr {
		print(i, "-")
	}
	println()

}

func printSlice(s []int) {
	for _, v := range s {
		print(v, "-")
	}
	println()

}

/*ret:
0-1-2-3-4-5-
2-3-4-5-4-5-
n1: 6 n2: 4
2-3-4-5-4-5-
0-1-0-1-2-3-6-7-
*/

/*why:
1、先将s2 0-3这四个位置的数据备份起来，再拷贝到s2的2-5这四个位置。所以没有变为 “0-1-0-1-0-1-6-7-”
*/
