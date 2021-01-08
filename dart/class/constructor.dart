class Person {
  String name;
  int age;
  // 构造函数
  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  //   print('构造函数');
  // }
  // 简写
  Person(this.name, this.age);
  // 命名构造函数 可以定义多个 用法一样
  Person.first() {
    print('我是第一个命名构造函数');
  }
  Person.last() {
    print('我是最后一个命名构造函数');
  }
  void getInfo() {
    print("$name-----$age");
    print("${this.name}----${this.age}");
  }

  void setAge(int age) {
    this.age = age;
  }
}

main() {
  Person p1 = new Person('zhangsan', 20);
  print(p1.age);
  p1.setAge(58);
  Person p2 = new Person.first();
  Person p3 = new Person.last();
}
