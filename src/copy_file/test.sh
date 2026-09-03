#!/bin/bash
set -euo pipefail

## VIASH START
meta_executable=target/copy_file
## VIASH END

printf 'hello from viash\n' > input.txt
"$meta_executable" --input input.txt --output output.txt
cmp input.txt output.txt
