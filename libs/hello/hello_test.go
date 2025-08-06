package hello

import (
	"testing"

	"github.com/carlo-aromando/monorepo/hello"
)

func TestSayHello(t *testing.T) {
	if hello.SayHello() != "Hello World" {
		t.Error("Expect string: Hello World")
	}
}
