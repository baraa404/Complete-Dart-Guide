// ignore_for_file: unused_local_variable
// ignore_for_file: dead_code

/*
^ try and catch :
* try : This block contains code that might throw an exception.
* catch : This block handles the exception if one occurs.
* finally : This block always executes, regardless of whether an exception occurs.
* You can catch specific exception types by name

& syntax:
try {
   Code that might throw an exception
   } on SpecificExceptionType catch (e) {
    Handle specific exception type
   } catch (e) {
    Handle any other exception
   } finally {
    Code that always runs
   }
*/
void main() {
  List<String> names = ["baraa"];
  try {
    // Attempt to access an index that doesn't exist
    print(names[1]);
    // Handle ArgumentError specifically
  } on RangeError {
    print("Range error caught");
  } catch (e) {
    // Handle any other exception
    print("Caught an exception: $e");
  } finally {
    // This code always executes
    print("Finally block executed - cleanup code goes here");
  }

  // Example of a custom exception
  CustomException c = CustomException(
    "Custom exception occurred",
  );

  try {
    c.validateage(15); // This will throw an exception
  } catch (e) {
    print(e);
  }
}

class CustomException implements Exception {
  final String message;
  CustomException(this.message);

  @override
  String toString() => 'CustomException: $message';

  void validateage(int age) {
    if (age < 18) {
      throw CustomException('Age must be at least 18');
    } else {
      print('Age is valid');
    }
  }
}
