/**
 * mixins混入，就是在类中混入其他功能
 * 可以使用混入实现类的多继承实现
 * 目前版本的dart的使用条件
 * 1.作为mixins的类只能继承Object
 * 2.作为mixins的类不能有构造函数
 * 3.一个类可以混入多个mixins类
 * 4.mixins不是继承，也不是接口，是一种新的特性
 */
// 使用with混入
// 如果多混入的类中有相同的方法，后混入的覆盖前面的

class A {
  String info = "this is A";
  void printA() {
    print("A");
  }

  void run() {
    print('run a ');
  }
}

class B {
  void printB() {
    print("B");
  }

  void run() {
    print('run b ');
  }
}

class D {
  // 有构造函数 混入会报错 但是可以继承再混入
  D() {}
  void printD() {
    print("D");
  }

  void run() {
    print('run d ');
  }
}

class C extends D with A, B {}

void main() {
  var c = new C();
  c.printA();
  c.printB();
  c.printD();
  c.run();
  // 混入之后判断类型的时候 只要是混入的类都可以使它的类型 和接口不一样
  print(c is C);
  print(c is A);
  print(c is B);
  print(c is D);
}
