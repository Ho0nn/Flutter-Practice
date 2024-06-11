abstract class Animal {
  int limbs = 4;
  String? skin;
  double ?weight;
  //Animal({required this.skin, required this.weight});
  void eat() {
    print("can eat");
  }
  
}

class Dog implements Animal {
  
  bark() {
    print("can bark");
  }
  
  @override
  int limbs=4;
  
  @override
  String? skin;
  
  @override
  double? weight;
  
  @override
  void eat() {
    // TODO: implement eat
  }
}
mixin ReptilesMixin {
  crwal(){}
}

class Cat extends Animal {
//  Cat({required skin, required double weight})
  //    : super(skin: skin, weight: weight);

  void meow() {
    print("can meow");
  }

  @override
  void eat() {
    print("cat eat");
  }

}
class snake extends Animal with ReptilesMixin{

}
