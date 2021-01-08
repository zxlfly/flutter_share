// dart中没有public，pprivate protec 这些访问修饰符
// 属性和方法前面加上_表示私有的
// 只有单独抽离成独立文件才有效
// 私有属性和方法不能直接使用 只能使用普通方法使用
class Animal {
  String _name; //私有属性
  int age;
  //默认构造函数的简写
  Animal(this._name, this.age);

  void printInfo() {
    print("${this._name}----${this.age}");
  }

  String getName() {
    return this._name;
  }

  void _run() {
    print('这是一个私有方法');
  }

  execRun() {
    this._run(); //类里面方法的相互调用
  }
}
