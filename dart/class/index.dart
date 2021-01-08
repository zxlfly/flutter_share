import 'lib/Animal.dart';
import 'lib/getset.dart';

main() {
  Animal a = new Animal('zhangsan', 6);
  // 私有属性不能直接使用
  // a._name;
  // a._run();
  a.execRun();
  print(a.getName());

  Rect r = new Rect(10, 2);
  // set
  r.areaHeight = 6;
  // get
  print(r.area);
}
