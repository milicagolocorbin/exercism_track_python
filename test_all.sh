#!/usr/bin/env bash

ROOT="src/learning_exercises"
FAILED=0

for exercise in "$ROOT"/*; do
    [ -d "$exercise" ] || continue

    # Skip directories without any *_test.py files
    compgen -G "$exercise/*_test.py" > /dev/null || continue

    echo
    echo "=== $(basename "$exercise") ==="

    (
        cd "$exercise"
        python3 -m unittest discover -p "*_test.py"
    )

    if [ $? -ne 0 ]; then
        ((FAILED++))
    fi
done

echo
if [ "$FAILED" -eq 0 ]; then
    echo "✅ All exercises passed!"
else
    echo "❌ $FAILED exercise(s) failed."
    exit 1
fi