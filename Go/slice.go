package main

func main() {
	var arr [35]int
	slice := arr[0:28]				//len 28, cap 35
	slice2 := arr[12:31]			//len 19, cap 35

	println("len(arr):", len(arr))
	println("cap(arr):", cap(arr))

	println("len(slice):", len(slice))
	println("cap(slice):", cap(slice))

	println("len(slice2):", len(slice2))
	println("cap(slice2):", cap(slice2))

	a := [...]int{0, 1, 2, 3, 4, 5}
	s := a[2:4]
	println(s[0])
	println(s[1])
}

/*ret:
cap(arr): 35
len(slice): 28
cap(slice): 35
len(slice2): 19
cap(slice2): 23
2
3
*/