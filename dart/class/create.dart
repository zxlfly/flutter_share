class Person {
  String name = "张三";
  int age = 23;
  void getInfo() {
    print("$name-----$age");
    print("${this.name}----${this.age}");
  }

  void setAge(int age) {
    this.age = age;
  }
}

main() {
  Person p1 = new Person();
  print(p1.age);
  p1.setAge(58);
}
