// ignore_for_file: unused_local_variable
// ignore_for_file: dead_code

void main() {
  // &================= ​‌‌​‌‍‌‍If condition​​ ​===========================&\\
  int Pass_Grade = 50;
  int Student_Grade = 70;
  bool DidPass = Student_Grade >= Pass_Grade;

  if (DidPass) {
    print('congratulations you have passed :)');
  } else
    print(' sorry you faild :(');
  //prints "congratulations you have passed :)"

  //---------------------------------------------------------------------------
  bool ISAdmin = false;
  bool ISModerator = false;
  if (ISAdmin) {
    print('You are an Admin');
  } else if (ISModerator) {
    print('You are Moderator');
  } else {
    print('You are a Memeber');
  }
  //prints "You are a Memeber"

  // &================= ​‌‍‌and "&&", or "|" operators ​===================&\\
  // ⁡⁣⁣⁢𝗮𝗻𝗱 𝗼𝗽𝗲𝗿𝗮𝘁𝗼𝗿⁡
  int mathScore = 80;
  int englishScore = 70;
  bool hasPassed = mathScore >= 50 && englishScore >= 50;

  if (hasPassed) {
    print('you have passed in both subjects');
  } else
    print('you have failed in one or both subjects');
  //prints "you have passed in both subjects"
  //-----------------------------------------------------------
  // ⁡⁣⁣⁢𝗼𝗿 𝗼𝗽𝗲𝗿𝗮𝘁𝗼𝗿⁡
  bool isAdmin = false;
  bool isModerator = true;

  if (isAdmin || isModerator) {
    print('you have admin or moderator access');
  }
  //prints "you have admin or moderator access"
  // &================= ​‌‍‌Switch case​ ​===============================&\\
  int day = 3;
  switch (day) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default:
      print('Invalid day');
  }

  //prints "Wednesday"

  // ⁡⁣⁢⁣​‌‌‍‍practice:​⁡ ​map and if condistion

  Map<String, int> students = {
    'student1': 21,
    'student2': 43,
    'student3': 90,
    'student4': 70,
  };
  bool student_resaults = students['student1']! >= Pass_Grade;
  if (student_resaults) {
    print('over 50');
  } else
    print('under 50');
  //prints "over 50"
}
