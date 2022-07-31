#!/usr/bin/env bash

ROOT="src/learning_exercises"
FAILED=0
PASSED=0

echo "Running all Exercism Python learning exercises..."
echo

for exercise in "$ROOT"/[0-9][0-9]_*; do
    [ -d "$exercise" ] || continue

    name=$(basename "$exercise")

    echo "=================================================="
    echo "Exercise: $name"
    echo "=================================================="

    (
        cd "$exercise"
        python3 -m unittest discover -v -p "*_test.py"
    )

    if [ $? -eq 0 ]; then
        echo "✅ $name passed."
        ((PASSED++))
    else
        echo "❌ $name failed."
        ((FAILED++))
    fi

    echo
done

echo "=================================================="
echo "Summary"
echo "=================================================="
echo "Passed: $PASSED"
echo "Failed: $FAILED"

if [ "$FAILED" -eq 0 ]; then
    echo
    echo "🎉 All exercises passed!"
else
    exit 1
fi