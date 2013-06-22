package main

func main() {
	a := [2][2]int{[2]int{1, 2}, [2]int{3, 4}}

	b := [2][2]int{[...]int{11, 12}, [...]int{13, 14}}

	c := [2][2]int{{21, 22}, {23, 24}}

	d := [...][2]int{{31, 32}, {33, 34}}

	println(a[1][1])
	println(b[1][1])
	println(c[1][1])
	println(d[1][1])
}
/*ret:
4
14
24
34
*/