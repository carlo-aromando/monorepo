package hello

import (
	"testing"

	"github.com/carlo-aromando/monorepo/libs/hello"
)

func TestSayHello(t *testing.T) {
	if hello.SayHello() != "Hello World" {
		t.Error("Expect string: Hello World")
	}
}
