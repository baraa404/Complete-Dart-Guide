// ignore_for_file: unused_local_variable
// ignore_for_file: dead_code
void main() {
  /*
  ⁡⁢⁣⁢𝗗𝗲𝗳𝗶𝗻𝘁𝗶𝗼𝗻 :⁡avoid null errors by making types non-nullable by default.
  ============
  ⁡⁢⁣⁣𝗨𝘀𝗮𝗴𝗲 :⁡
  1. Use '?' to declare a variable that can be null.
  2. Use '!' to assert that a variable is not null.
  3. Use '??' to provide a default value if a variable is null.
  4. Use '??=' to assign a value only if the variable is null.  
  5. Use 'late' to declare a variable that will be initialized later.
  
  */
  //&=================Null Safety===================================&\\
  int? ver;
  print(ver); //print null
  ver = ver ?? 1; // if ver is null, assign 1 to it
  print(ver); //print 1

  //&------------------------------------
  int? vor;
  //if vor is null, dont do the function
  print(vor?.toDouble());  // prints null
}
