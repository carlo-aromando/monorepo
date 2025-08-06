package hello

import (
	"testing"
)

func TestSayHello(t *testing.T) {
	if SayHello() != "Hello Carlo" {
		t.Error("Expect string: Hello Carlo")
	}
}
