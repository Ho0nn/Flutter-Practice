//main --> the start

import 'Animal.dart';
import 'Circle.dart';

Future<void> main(List<String> args) async {
  String name = "Haneen";
  print("My name is : $name");
  int age = 21;
  num rate = 4.6;
  dynamic x = 5, y = "haneen";
  print("My age is $age");
  print(age.isNaN);
/************List***************/
  List<String> names = ["Haneen", "Mohamed", "Alaa","Haneen"];
  print(names[0]);
  print(names);
/*************set*************/
  Set<num> ages = {21, 50, 12};
  ages.add(19);
  ages.remove(12); //first  value
  print(ages);
/*************Map************/
  Map<String, num> ageMap = {
    'Haneen': 21, //unique identirier can't be
    'Mohamed': 50,
    "Alaa": 12,
  };
  print(ageMap["Haneen"]);

/****if eLse ***** */
  num a = 9, b = 10;
  if (a > b) {
    print(a);
  } else if (a < b) {
    print(b);
  } else {
    print("equals");
  }

/****Switch ********/

  String grade = "A";
  switch (grade) {
    case 'A':
      print("exelent");
      break;

    case 'B':
      print("Very Good");
      break;
  }
  var fixed = List.filled(5, 2);
  print(fixed);

  // {scope}--> {local variables are declared-->are known in this scope only}

/*
variables by default are not null 
to assign null to a variable :
datatype? name;  -->int? x;
*opertators:
-?
- ! ---> sure that variable is not null--> int x=y!;
- ??value   --> if var is null assign value to this --> x=y??15  -->x=15
- vvar?....--> if var is null don't execute after?
*/

/***********For *******/
  for (var item in names) {
    print(item);
  }

  names.forEach((item) {
    print(item);
  });

  printhello();
  // print(sum(4, 8));

  /*******classes******/
  /* Dog jack = Dog();
  Cat cat = Cat();
  print(cat.limbs);
  cat.meow();
  cat.eat();*/
  Circle circle = Circle(raduis: 5, x: 6, y: 7);
  circle.draw();
  Circle circle2 = Circle.origin(raduis: 8);
  circle2.draw();
  Gender gender = Gender.female;

  /*************RegExp** */
  RegExp regExp = new RegExp("source");
  String email = ("hanoona0010@gmail.com");
  print(regExp.hasMatch(email));
  print(await sum(300, 100));
  print(await fun1(x1: "Haneen", x2: "Mounofia"));
  print(await fun1(x1: "Haneen"));
  Emp emp = new Emp();
  emp.name = "Haneen";
  emp.email = "haneen@yahoo.com";
  emp.id = "12345678912345";
  print(emp.checkEmail(emp.email));
  print(emp.checkId(emp.id));
}

class Emp {
  late String name;
  late String email;
  late String id;
  get funn => print("Hello,$name");
  bool checkEmail(email) {
    RegExp regExp = new RegExp('[a-z][0-9]@gmail@yahoo.com');
    return (regExp.hasMatch(email));
  }

  bool checkId(id) {
    RegExp reg2 = new RegExp('[0-9]{14}');
    return (reg2.hasMatch(id));
  }
}

/********Enums************ */
enum Gender { male, female }

/*********Functions ********* */
void printhello() {
  print("hello world!");
}

//Synchronous -->default
//Asyncronous -->
//await signature async{
//}
Future<num> sum(num x, num y) async {
  await Future.delayed(Duration(seconds: 2));
  return x + y;
}

Future<String> fun1({required String x1, String? x2}) async {
  await Future.delayed(Duration(seconds: 2));
  return x1 + " : " + (x2?.toLowerCase() ?? 'Egypt');
}

// optional parametar ->we can set argument or not-->fun([int ?x])
// named parameters fun({num?x,num?y})--> in main -->fun(price:50,discount:10);!!!!!!

//extentions:
extension x on String {
  String get First {
    return this[0] + this[this.length - 1];
  }
}
