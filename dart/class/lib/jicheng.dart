/*
面向对象的三大特性：封装 、继承、多态
Dart中的类的继承：  
    1、子类使用extends关键词来继承父类
    2、子类会继承父类里面可见的属性和方法 但是不会继承构造函数
    3、子类能复写父类的方法 getter和setter
*/

class Person {
  String name;
  num age;
  Person(this.name, this.age);
  Person.onther(this.name, this.age);
  void printInfo() {
    print("${this.name}---${this.age}");
  }

  void printsuper() {
    print('super');
  }

  void chongxie() {
    print('yuanlaide');
  }
}

class Child extends Person {
  String sex;
  // Child(String name, num age, String sex) : super(name, age) {
  //   this.sex = sex;
  // }
  // 可以指定父类的构造函数执行
  Child(String name, num age, String sex) : super.onther(name, age) {
    this.sex = sex;
  }
  run() {
    print("${this.name}---${this.age}--${this.sex}");
    // 子类里调用父类的方法
    super.printsuper();
  }

  // 可以覆写父类的方法
  // 最后加上@override表名覆写
  @override
  void chongxie() {
    print('override');
  }

  void duyou() {
    print('duyou');
  }
}

main() {
  Child c = new Child('zhangsan', 12, '9');
  print(c.name);
  c.printInfo();
  c.run();
  c.chongxie();
  // 继承的子类实例化的时候可以将类型定义为父类
  // 就是将子类类型的指针赋值给父类类型的指针
  // 此时父类中没有的方法 实例化的类是不可以调用的，哪怕子类中有也不行
  // 这也是多态的提现
  Person p = new Child('zhangsan', 12, '9');
  // p.duyou(); 报错
}
