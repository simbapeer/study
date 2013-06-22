package main

func main() {
	for i := 0; i < 128; i++ {
		if shouldEscape(byte(i)) {
			println("shouldEscape i:", i)
		}
	}
}

func shouldEscape(c byte) bool {
	switch c {
	case ' ', '?', '&', '=', '#', '+':
		return true
	}
	return false
}

/*ret:
shouldEscape i: 32
shouldEscape i: 35
shouldEscape i: 38
shouldEscape i: 43
shouldEscape i: 61
shouldEscape i: 63
*/
