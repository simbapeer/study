package main

import (
	"code.google.com/p/go-tour/wc"
	"strings"
)

func WordCount(s string) map[string]int {
	ret := make(map[string]int);
//	var ret map[string]int = make(map[string]int);
	var fields []string = strings.Fields(s);
//	fields := strings.Fields(s);
	for _, v := range fields {
		ret[v]++
	}
	return ret
	return map[string]int{"x": 1}
}

func main() {
	wc.Test(WordCount)
}