# Unhandled Exception in Dart Asynchronous Operations

This repository demonstrates a common error handling pattern in Dart asynchronous operations and how to improve it for better error handling and debugging.

The `bug.dart` file shows the original code with a generic `catch` block. The `bugSolution.dart` file provides a more robust solution.

## Problem
The initial `fetchData` function uses a generic `catch (e)` block. This makes it difficult to identify the specific type of error and handle it appropriately.  It might mask underlying issues.

## Solution
The improved version uses a more specific `catch` block, handling different exception types separately.  This allows for more targeted error handling and clearer debugging.