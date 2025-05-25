#!/usr/bin/env sh
set -e
set -x

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE}")" && pwd)

mkdir -p tmp

clang -c -o tmp/bib.o bib.c
clang -c -o tmp/turbo.o turbo.c

ціль tmp/прочитати_ввід.ll скомпілювати $SCRIPT_DIR/прочитати_ввід.ц
clang -o tmp/прочитати_ввід tmp/прочитати_ввід.ll tmp/bib.o tmp/turbo.o -luring -lidn2 -lpthread -lreadline

ціль tmp/періодично.ll скомпілювати $SCRIPT_DIR/періодично.ц
clang -o tmp/періодично tmp/періодично.ll tmp/bib.o tmp/turbo.o -luring -lidn2 -lpthread -lreadline

ціль tmp/відкласти.ll скомпілювати $SCRIPT_DIR/відкласти.ц
clang -o tmp/відкласти tmp/відкласти.ll tmp/bib.o tmp/turbo.o -luring -lidn2 -lpthread -lreadline

ціль tmp/інтернет_звʼязок.ll скомпілювати $SCRIPT_DIR/інтернет_звʼязок.ц
clang -o tmp/інтернет_звʼязок tmp/інтернет_звʼязок.ll tmp/bib.o tmp/turbo.o -luring -lidn2 -lpthread -lreadline

ціль tmp/інтернет_обслуговувач.ll скомпілювати $SCRIPT_DIR/інтернет_обслуговувач.ц
clang -o tmp/інтернет_обслуговувач tmp/інтернет_обслуговувач.ll tmp/bib.o tmp/turbo.o -luring -lidn2 -lpthread -lreadline