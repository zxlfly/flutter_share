void main() {
  // 函数
  /**
  *返回类型  方法名称（参数1，参数2,...）{
  *  方法体
  *  return 返回值;
  *}
    */
  void printInfo() {
    print('我是一个自定义方法');
  }

  int sumNum(int n) {
    var sum = 0;
    for (var i = 1; i <= n; i++) {
      sum += i;
    }
    return sum;
  }

  var n1 = sumNum(5);
  print(n1);
  var n2 = sumNum(100);
  print(n2);
  // 可选参数
  String printUserInfo(String username, [int age]) {
    if (age != null) {
      return "姓名:$username---年龄:$age";
    }
    return "姓名:$username---年龄保密";
  }

  print(printUserInfo('张三'));

  // 定义一个带默认参数的方法
  String printUserInfo2(String username, [String sex = '男', int age]) {
    //行参

    if (age != null) {
      return "姓名:$username---性别:$sex--年龄:$age";
    }
    return "姓名:$username---性别:$sex--年龄保密";
  }

  print(printUserInfo2('张三'));
  print(printUserInfo2('小李', '女'));
  print(printUserInfo2('小李', '女', 30));
  // 定义一个命名参数的方法
  String printUserInfo3(String username, {int age, String sex = '男'}) {
    if (age != null) {
      return "姓名:$username---性别:$sex--年龄:$age";
    }
    return "姓名:$username---性别:$sex--年龄保密";
  }

  print(printUserInfo3('张三', age: 20, sex: '未知'));
  // 箭头函数
  List list3 = ['苹果', '香蕉', '西瓜'];
  list3.forEach((value) {
    print(value);
  });
  list3.forEach((value) => print(value));
  list3.forEach((value) => {print(value)});
  // 匿名函数同js ts
  // 闭包同js ts
}
