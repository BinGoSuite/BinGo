package main

import (
	"fmt"
	"os"
	"os/exec"
)

func main() {
	fmt.Println("ayoo da debugga started...")

	if len(os.Args) < 2 {
		fmt.Println("Usage: bingo <command>")
		os.Exit(1)
	}

	file := os.Args[1]
	cmd := exec.Command("go", "run", file)
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	cmd.Stdin = os.Stdin
	if err := cmd.Run(); err != nil {
		fmt.Fprintf(os.Stderr, "Error executing command: %v\n", err)
		os.Exit(1)
	}

}
