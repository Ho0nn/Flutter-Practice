class Circle {
  double raduis;
  late int x, y;
  Circle({required this.raduis, required this.x, required this.y});
  draw() {
    print("print circle x= $x & y= $y & raduis= $raduis");
  }

  Circle.origin({required this.raduis}) {
    x = 0;
    y = 0;
  }
}
