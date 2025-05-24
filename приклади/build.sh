#!/usr/bin/env sh
set -e
set -x

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE}")" && pwd)

mkdir -p tmp

ціль tmp/періодично.ll скомпілювати $SCRIPT_DIR/періодично.ц
clang -o tmp/періодично tmp/періодично.ll bib.c turbo.c -luring -lidn2

ціль tmp/відкласти.ll скомпілювати $SCRIPT_DIR/відкласти.ц
clang -o tmp/відкласти tmp/відкласти.ll bib.c turbo.c -luring -lidn2

ціль tmp/інтернет_звʼязок.ll скомпілювати $SCRIPT_DIR/інтернет_звʼязок.ц
clang -o tmp/інтернет_звʼязок tmp/інтернет_звʼязок.ll bib.c turbo.c -luring -lidn2

ціль tmp/інтернет_обслуговувач.ll скомпілювати $SCRIPT_DIR/інтернет_обслуговувач.ц
clang -o tmp/інтернет_обслуговувач tmp/інтернет_обслуговувач.ll bib.c turbo.c -luring -lidn2