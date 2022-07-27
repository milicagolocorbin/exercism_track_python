# Exercism Track Python - SOLUTIONS

## Organization

Problems are divided in two folders:

1. `src/learning_exercises` - folder that explores specific Python features. Each exercise has separate folder with solution code file and test code file.
2. `src/practice_exercises` - folder that reinforces what is learned by solving larger, more open-ended problems. Each exercise has separate folder with solution code file and test code file.

## Run Tests

To run all tests:

```bash
# to run all tests from the level of home folder:
python3 -m unittest discover src/learning_exercises/*/ -p "*_test.py"

# to run all tests from the level of home folder with verbose flag:
python3 -m unittest discover -v src/learning_exercises/*/ -p "*_test.py"

```

To run individual tests:

```bash
# to run all tests in specific folder:
cd src/learning_exercises/01_hello_world/
python3 -m unittest hello_world_test.py

# to run all tests in specific folder with verbose flag:
cd src/learning_exercises/01_hello_world/
python3 -m unittest -v hello_world_test.py

```