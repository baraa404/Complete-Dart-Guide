// ignore_for_file: unused_local_variable
void main() {
  print("&================= List Methods ===================&");
  //&=================List Methods===================================&\\
  /*
 ⁡⁢⁣⁢ 𝗗𝗶𝗳𝗲𝗻𝗲𝘁𝗶𝗼𝗻 :⁡⁡ List is a collection of elements
  ================================
  ⁡⁢⁣⁣Usage :⁡
  ► used to store multiple values in a single variable
  ► allows duplicate values
  ► maintains the order of elements
 */
  List<String> studentNames = ['baraa', 'ahmad', 'mohammad'];
  List<int> gpa = [1, 2, 3, 4];

  print(studentNames[0]); // baraa
  print(studentNames.length); // 3
  studentNames.add('Ali1');
  studentNames.insert(1, 'Ali2'); // insert value at index 1
  print(studentNames); // [baraa, Ali2, ahmad, mohammad, Ali1]

  studentNames.remove('ahmad'); // remove value
  print(studentNames); // [baraa, Ali2, mohammad, Ali1]

  print("&================= Set Methods ===================&");
  //&=================Set Methods===================================&\\
  /*
  ⁡⁢⁣⁢𝗗𝗶𝗳𝗲𝗻𝗲𝘁𝗶𝗼𝗻 : ⁡Set is a collection of unique elements
  =================================== ====
  ⁡⁢⁣⁣Usage :⁡
  ► used to store multiple values in a single variable
  ► does not allow duplicate values
  ► does not maintain the order of elements 
  */
  Set<String> studentNamesSet = {'baraa', 'ahmad', 'mohammad', 'ahmed'};

  // Adding a new unique value
  studentNamesSet.add('Ali');
  // Trying to add a duplicate value (will have no effect)
  studentNamesSet.add('Ali');

  print("&================= Map Methods ===================&");
  //&=================Map Methods===================================&\\
  /*
  ⁡⁢⁣⁢⁡⁢⁣⁢𝗗𝗶𝗳𝗲𝗻𝗲𝘁𝗶𝗼𝗻 : ⁡Map is a collection of key-value pairs
  =======================================
  ⁡⁢⁣⁣𝗨𝘀𝗮𝗴𝗲 :⁡
  ► used to store multiple values in a single variable
  ► allows duplicate keys
  ► does not maintain the order of elements
  */
  Map<String, String> StudentNamesMap = {
    'name1': 'baraa',
    'name2': 'ahmad',
    'name3': 'mohammad',
  };
  Map<String, int> gpaMap = {'gpa1': 1, 'gpa2': 2, 'gpa3': 3, 'gpa4': 4};
  print(StudentNamesMap); // {name1: baraa, name2: ahmad, name3: mohammad}
  print(StudentNamesMap['name1']); //baraa
  print(gpaMap['gpa1']); //1

  print("&================= Practice ===================&");
  // ⁡⁣⁢⁣​‌‌‍Practice​⁡

  List<int> number = [10, 21, 321, 42];
  print(number[1]); //21

  Set<int> numberset = {1, 2, 3, 4};
  print(numberset.elementAt(0)); //1

  Map<String, int> numberofseats = {'room1': 150, 'room2': 30, 'room3': 70};
  print(numberofseats['room1']); //150
}
