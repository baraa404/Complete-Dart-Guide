// ignore_for_file: unused_local_variable
// ignore_for_file: dead_code

/*
^ try and catch :
* try : This block contains code that might throw an exception.
*catch : This block handles the exception if one occurs.

& syntax:
try {
   Code that might throw an exception
   } catch (e) {
    Handle the exception
   }
*/
void main() {
  List<String> names = ["baraa"];
  try {
    // Attempt to access an index that doesn't exist
    print(names[1]);
  } catch (e) {
    // Handle the exception
    print("Caught an exception: $e");
  }
}
