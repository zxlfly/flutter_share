/**
 * dart中没有interface关键字，普通类或者抽象类都可以作为接口被实现
 * 使用关键字implements进行实现
 * 类里面所有的属性和方法都需要覆写
 * 接口和类一样可以单独抽离 导入使用
 * 一个类可以实现多个接口
 * 继承和接口实现可以同时存在
 */

abstract class Animal {
  // 抽象方法
  eat();
  String name;
  // 也可以写普通方法
  printinfo() {
    print('抽象类的普通方法');
  }
}

abstract class A {
  String age;
  printA();
}

abstract class B {
  printB();
}

class Cat extends Animal implements A, B {
  @override
  String age;
  @override
  eat() {}
  @override
  printA() {}
  @override
  printB() {}
}

class Dog implements Animal {
  @override
  String name;

  @override
  eat() {
    print('小狗吃');
  }

  @override
  printinfo() {
    print('dog');
  }
}

main() {
  Dog d = new Dog();
  d.eat();
  d.printinfo();
  //实现接口不会包含对应的类型
  print(d is Animal);
  print(d is A);
  print(d is B);
  print(d is Dog);
}
