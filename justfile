lox_build := "com/craftinginterpreters/lox/*.java"
lox_run := "com.craftinginterpreters.lox.lox"

default:
    @just --choose

[group("setup")]
setup:
    @brew install ripgrep fzf openjdk java

[group("lox")]
build: 
    @javac -d out {{ lox_build }}

[group("lox")]
run:
    @javac -cp out {{ lox_run }}
