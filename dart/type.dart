// 入口
void main() {
  // 变量
  // dart是强类型语言，可以不预先定义变量类型，会自动推导
  // 使用var声明 会根据第一次的赋值确定类型
  var aa = '123';
  // 也可以加上类型进行声明  两者不能同时存在

  // 字符串
  String a2 = '456';
  String a21 = '456';
  // 字符串拼接
  print("$a2 $a21");
  print(a2 + a21);
  print(a2 + " " + a21);

  // 数字类型
  // 整数类型
  int n1 = 1;
  // 既可以是整数也可以是浮点
  double n2 = 1.0;
  double n21 = 1;
  // 既可以是整数 也可以是浮点
  num n3 = 666;
  num n4 = 6.66;

  // bool
  bool bb = true;
  bb = false;
  print(bb);

  // List数组  列表
  var l = ['aaa', 'bbb'];
  print(l);

  var l2 = new List();
  l2.add(11);
  l2.add(111);
  l2.add(1111);
  print(l2);

  var l3 = new List<String>();
  l3.add('11');
  print(l3);

  // List里面的属性
  /**
  length          长度
  reversed        翻转
  isEmpty         是否为空
  isNotEmpty      是否不为空
   */

  // List方法
  /**
  常用方法
  add         增加
  addAll      拼接数组
  indexOf     查找  传入具体值
  remove      删除  传入具体值
  removeAt    删除  传入索引值
  fillRange   修改   
  insert(index,value);            指定位置插入    
  insertAll(index,list)           指定位置插入List
  toList()    其他类型转换成List  
  join()      List转换成字符串
  split()     字符串转化成List
  forEach   
  map
  where
  any
  every
   */

  // Set  和js一样 不能有重复的
  List myList2 = ['香蕉', '苹果', '西瓜', '香蕉', '苹果', '香蕉', '苹果'];
  var s2 = new Set();
  s2.addAll(myList2);
  print(s2);
  print(s2.toList());

  // Maps 字典 映射(Maps)是无序的键值对：

  /**
  常用属性：
  keys            获取所有的key值
  values          获取所有的value值
  isEmpty         是否为空
  isNotEmpty      是否不为空

  常用方法:
  remove(key)     删除指定key的数据
  addAll({...})   合并映射  给映射内增加属性
  containsValue   查看映射内的值  返回true/false
  forEach   
  map
  where
  any
  every
   */

  var person = {
    "name": "zhangsna",
    "age": 20,
    "work": ['chengxuyuan', "songwaimai"]
  };
  print(person);
  print(person["name"]);
  print(person["age"]);
  print(person["work"]);

  var p = new Map();
  p["name"] = "李四";
  p["age"] = 22;
  p["work"] = ["程序员", "送外卖"];
  print(p);

  print(p["age"]);

  // 常亮 final  const
  // const值不变 一开始就得赋值
  // final 可以开始不赋值 只能赋值一次。惰性初始化，在运行时第一次使用前才赋值
  final a3 = '789';
  final String name = '789';

  const a4 = 100;
  const double atm = 1.0123;

  // 类型判断
  var ss = 123;
  print(ss is String);

  // 算数运算符
  int a = 13;
  int b = 5;

  print(a + b); //加
  print(a - b); //减
  print(a * b); //乘
  print(a / b); //除
  print(a % b); //其余
  print(a ~/ b); //取整

  var c = a * b;
  print('--------');
  print(c);

  // 关系运算符
  print(a == b); //判断是否相等
  print(a != b); //判断是否不等
  print(a > b); //判断是否大于
  print(a < b); //判断是否小于
  print(a >= b); //判断是否大于等于
  print(a <= b); //判断是否小于等于

  // 取反
  bool flag = false;
  print(!flag);

  /* &&并且:全部为true的话值为true 否则值为false */
  bool za = true;
  bool zb = true;
  print(za && zb);

  /* ||或者：全为false的话值为false 否则值为true */

  bool xa = false;
  bool xb = false;
  print(xa || xb);

  // 1、基础赋值运算符   =   ??=为空就等于后面的值
  int bbb;
  bbb ??= 23;
  // 等等和js ts差不多

  // Number类型转换成String类型 toString()
  int zz1 = 111;
  var zz2 = zz1.toString();
  // String类型转成Number类型  int.parse() double.parse()
  String zzz1 = '123';
  var zzz2 = int.parse(zzz1);
  var zzzz3 = double.parse(zzz1);

  // 条件判断 for循环 while和js ts一样
}
