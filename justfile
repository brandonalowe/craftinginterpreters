lox_build        := "com/craftinginterpreters/lox/*.java"
lox_generate     := "com/craftinginterpreters/tool/GenerateAst.java"
lox_generate_out := "com.craftinginterpreters.tool.GenerateAst"
lox_run          := "com.craftinginterpreters.lox.Lox"

default:
    @just --choose

[group("setup")]
setup:
    @brew install ripgrep fzf openjdk java

[group("lox")]
build: 
    @javac -d out {{ lox_build }}

[group("lox")]
generate:
    @javac -d out {{ lox_generate }}
    @java -cp out {{ lox_generate_out }} com/craftinginterpreters/lox

[group("lox")]
run:
    @java -cp out {{ lox_run }}
