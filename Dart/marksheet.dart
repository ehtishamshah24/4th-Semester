import 'dart:io';

void main() {
  print('Enter Your Name:');
  String? name = stdin.readLineSync();

  print('Enter Your ID:');
  String? stdId = stdin.readLineSync();

    print('Enter Your Batch Code:');
  String? batchCode = stdin.readLineSync();

    print('Enter Your Semester:');
  String? semester = stdin.readLineSync();


  //   int getValidatedMarks(String subject) {
  //   while (true) {
  //     print('Enter your $subject marks (0-100):');
  //     int? marks = int.tryParse(stdin.readLineSync()!);
  //     if (marks != null && marks >= 0 && marks <= 100) {
  //       return marks;
  //     } else {
  //       print('Invalid input! Please enter marks between 0 and 100.');
  //     }
  //   }
  // }

  // int math = getValidatedMarks("Mathematics");
  // int urdu = getValidatedMarks("Urdu");
  // int english = getValidatedMarks("English");
  // int chem = getValidatedMarks("Chemistry");
  // int physics = getValidatedMarks("Physics");

  print('Enter your Mathematics marks:');
  int math = int.parse(stdin.readLineSync()!);

  print('Enter your Urdu marks:');
  int urdu = int.parse(stdin.readLineSync()!);

  print('Enter your English marks:');
  int english = int.parse(stdin.readLineSync()!);

  print('Enter your Chemistry marks:');
  int chem = int.parse(stdin.readLineSync()!);

  print('Enter your Physics marks:');
  int physics = int.parse(stdin.readLineSync()!);

  int subMarks = 100;
  int totalMarks = 500;
  int obtainMarks = math + urdu + english + chem + physics;
  double percentage = obtainMarks / 5;

  String getRemarks(int marks) {
  if (marks >= 40 && marks <= 100) {
    return "Pass";
  } else {
    return "Fail";
  }
}


  String grade = '""';
 if (percentage >= 80) {
    grade = '"A1"';
  } else if (percentage >= 70) {
    grade = '"A"';
  } else if (percentage >= 60) {
    grade = '"B"';
  } else if (percentage >= 50) {
    grade = '"C"';
  } else if (percentage >= 40) {
    grade = '"D"';  
  }else if (percentage >= 30) {
    grade = '"E"';
  }else if (percentage >= 20) {
    grade ='"F"';
  }else if (percentage >= 10) {
    grade = '"G"';
  }else {
    grade = '"H"';
  }
  print('\n----------------------- Student Marksheet ----------------------------\n');
  print('| Student Name   : $name');
  print('| Roll Number    : $stdId ');
  print('| Batch code     : $batchCode');
  print('| Semester       : $semester ');
  print('|---------------------------------------------------------------------|');
  print('| Subject       | Marks  | Total Marks         | Status               |');
  print('|---------------------------------------------------------------------|');
  print('| Mathematics   | $math     | $subMarks                 | ${getRemarks(math)}                 |');
  print('| Urdu          | $urdu     | $subMarks                 | ${getRemarks(urdu)}                 |');
  print('| English       | $english     | $subMarks                 | ${getRemarks(english)}                 |');
  print('| Chemistry     | $chem     | $subMarks                 | ${getRemarks(chem)}                 |');
  print('| Physics       | $physics     | $subMarks                 | ${getRemarks(physics)}                 |');
  print('|---------------------------------------------------------------------|');
  print('| Total Marks       : $totalMarks                                             |');
  print('| Obtained Marks    : $obtainMarks                                             |');
  print('| Percentage        : ${percentage.toStringAsFixed(2)}%                                          |');
  print('| Grade             : $grade                                             |');
  print('|_____________________________________________________________________|');
          
}