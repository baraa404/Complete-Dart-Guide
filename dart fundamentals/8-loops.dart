// ignore_for_file: unused_local_variable
// ignore_for_file: dead_code
void main() {
  // &=================​‌‍‌ ‍for loop ​===============================&\\
  List<String> names = ['1-baraa', '2-ali', '3-mohammed', '4-omar'];

  for (int i = 0; i < names.length; i = i + 1) {
    print(names[i]);
  }
  // &=================​‌‍‌ while loop ​===============================&\\
  bool IsRunning = true;
  while (IsRunning) {
    print('rendering');
    IsRunning = false;
  }
  // &=================​‌‍‌ do while loop ​===============================&\\
  bool IsRunning2 = false;
  do {
    print('rendering');
  } while (IsRunning2);
  // &=================​‌‍‌ for in loop ​===============================&\\
  for (String name in names) {
    print(name);
  }
  // &=================​‌‍‌ for each loop ​===============================&\\
  names.forEach((name) {
    print(name);
  });
  // &=================​‌‍‌ nested loops ​===============================&\\
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 2; j++) {
      print('i: $i, j: $j');
    }
  }
  // &=================​‌‍‌ continue and break ==============================&\\
  for (int i = 0; i < 10; i++) {
    if (i == 2) {
      continue; // Skip the iteration when i is 2
    }
    if (i == 3) {
      break; // Exit the loop when i is 3
    }
    print(i);
  }
}
