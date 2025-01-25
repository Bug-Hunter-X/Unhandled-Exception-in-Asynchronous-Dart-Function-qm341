# Unhandled Exception in Asynchronous Dart Function

This repository demonstrates a common error in asynchronous Dart programming: improper exception handling in asynchronous functions.

The `bug.dart` file contains code that fetches data from an API.  The `try-catch` block within the `fetchData` function only prints an error message instead of properly handling or propagating the exception.  This can lead to unexpected behavior in the calling function.

The `bugSolution.dart` file provides a corrected version of the code that demonstrates how to effectively handle exceptions, ensuring that the calling function (`main`) can properly respond to errors.

## How to reproduce the bug
1. Clone this repository.
2. Run `bug.dart`.
3. Observe the output and note that it doesn't provide clear error handling.

## Solution
The solution addresses the problem by ensuring that the exception is handled appropriately within both the `fetchData` and `main` functions. The `rethrow` keyword allows exceptions to propagate up to the calling function, facilitating better error management.