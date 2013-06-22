package main

func main() {
	f('A')
	i := 0
	switch i {
	case 0:			//1
	case 1:
		f('b')
	}

	switch i {
	case 0:
		fallthrough	//2
	case 1:
		f('c')
	}
}

func f(c byte) {
	println(unhex(c))
}

func unhex(c byte) byte {
	switch {
	case '0' <= c && c <= '9':
		return c - '0'
	case 'a' <= c && c <= 'f':
		return c - 'a' + 10
	case 'A' <= c && c <= 'F':
		return c - 'A' + 10
	}
	return 0
}

/*ret:
10
12
*/

/*why:
1.匹配失败后不会自动向下尝试
2.可以使用 fallthrough 使其匹配失败后向下尝试
*/
