//extend objectr class
class Human {
  String _skin = "brown";
  double? age, weight, height;
  Human(double? age, double? weight, double? height) {
    this.age = age;
    this.height = height;
    this.weight = weight;
  }
  void setSkin(String skin)
  {
    this._skin = skin;
  }

  String get getSkin => this._skin;

  void eat() {
    print("can eat");
  }
}