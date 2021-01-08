/**
 * 通过abstract关键字来定义抽象类
 * 抽象方法不能用abstract声明，没有方法体的方法就是抽象方法
 * 如果子类继承抽象类必须实现里面的所有抽象方法
 * 抽象类不能实例化
 * 
 * 继承使用extends
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

class Dog extends Animal {
  @override
  eat() {
    print('小狗吃狗粮');
  }
}

class Cat extends Animal {
  @override
  eat() {
    print('小猫吃鱼');
  }
}

main() {
  Dog d = new Dog();
  d.eat();
  d.printinfo();
  Cat c = new Cat();
  c.eat();
  c.printinfo();
}
