// ignore_for_file: unused_local_variable
// ignore_for_file: dead_code
void main() {
  pirntStaute(); // prints happy

  int answer = twoNmubersSum(10, 20);
  print(answer); // 30

  print(clacFinalprice(price: 50, discount: 10)); // 50.0
  print(clacFinalprice(price: 100)); // 100.0 (default discount is 0.0)
}
//&=================Functions===================================&\\

void pirntStaute() {
  print('happy');
}

//&=================== return fucntions===================&\\
// parameters are num1 and num2
// arguments are 10 and 20
int twoNmubersSum(int num1, int num2) {
  int resault = num1 + num2;
  return resault;
}

// [] is used to make the parameter optional
// {} is used to make the parameter named optional (means you can pass the parameter by name)
// () is used to make the parameter required

double clacFinalprice({required double price, double discount = 0.0}) {
  double finalprice = price - (price * discount) / 100;
  return finalprice;
}

//&=================== single line ===================&\\
void printStatus() => print('happy');

//&=================== annonymous function ===================&\\
var greet = (String name) {
  return 'Hello, $name!';
};

//&=================== function as first class citizen ===================&\\
void executeFunction(Function func) {
  func();
}

//&=================== recursive function ===================&\\
int factorial(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

//&=================== exist function ===================&\\
void exitFunction() {
  print('Exiting the program...');
  // You can use exit(0) to terminate the program, but it's not recommended in Dart.
  // exit(0);
}
