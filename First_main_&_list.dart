void main(){
  List <String> phoneNumber = [ "+88", "01768131685", "01768171985", "01768111286", "01768131685"];
  var result=phoneNumber.first;

  print(result+phoneNumber[1]);
  print(result+phoneNumber[2]);
  print(result+phoneNumber[3]);
  print(result+phoneNumber.last);

  Map <String ,String> name ={'Name':'Fahad Islam'};
  print(name['Name']);
}

// // importing dart:io file
// import 'dart:io';
//
// void main()
// {
//  print("Enter your name?");
//  // Reading name of the Geek
//  String? name = stdin.readLineSync(); // null safety in name string
//
//  // Printing the name
//  print("Hello, $name! \nWelcome to GeeksforGeeks!!");
// }
