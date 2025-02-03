import 'dart:io';

// Function to calculate Fibonacci number using iteration
int fibonacci(int n) {
  if (n <= 1) {
    return n; // Base case
  }

  int a = 0, b = 1, c;

  for (int i = 2; i <= n; i++) {
    c = a + b;
    a = b;
    b = c;
  }

  return b;
}

void main() {
  while (true) {
    int number; // Declare number as a non-nullable int

    // Input for the number
    while (true) {
      print(" ");
      print("=========================");
      print("  Fibonacci Calculator  ");
      print("=========================");
      print(" ");
      stdout.write("Enter a non-negative integer: ");
      String? input = stdin.readLineSync();

      if (input == null || input.isEmpty) {
        print("Enter a number first.");
        continue;
      }

      try {
        number = int.parse(input);
        if (number < 0) {
          print("Please enter a non-negative integer.");
          continue;
        }
        break; // Exit the loop if the input is valid
      } catch (e) {
        print("Please enter a number.");
      }
    }

    // Calculate the Fibonacci number
    int result = fibonacci(number); // Using the fibonacci function

    // Output the result
    print("The Fibonacci number at position $number is $result.");

    // Ask if the user wants to calculate again
    while (true) {
      print(" ");
      stdout.write("Do you want to calculate again? (y/n): ");
      String? repeat = stdin.readLineSync()?.toLowerCase();

      if (repeat == 'y') {
        break; // Exit the inner loop to repeat the calculation
      } else if (repeat == 'n') {
        print(" ");
        print("=====================================");
        print("  Thank you for using this program.");
        print("=====================================");
        print(" ");
        return; // Exit the program
      } else {
        print("Please enter 'y' or 'n'.");
      }
    }
  }
}
