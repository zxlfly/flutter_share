# [dart](https://dart.dev/)
是有谷歌开发的，诞生于2011年，号称要取代JavaScript。但是几年一直不温不火。
**关于安装**flutter最新版本自带dart不需要单独安装

## type 数据类型相关
## function 函数方法相关
## class 类相关

### 库
dart中的库主要有三种：
- 我们自定义的库（每个dart 文件都是一个库）
    - import 'lib/xxxx.dart'(就像class实例中的一样)
- 系统内置库
    - import 'dart:math';
    - 等等
- Pub包管理系统中的库
    - 需要在根目录创建一个pubspec.yaml文件
    - 在这个问价中配置名称、描述、依赖等信息
    - 然后运行pub get下载依赖到本地
    - 项目中引入库：import 'package:*****.dart'
- 在引入库的时候一些常用配置
    - 可以设置别名，尤其是两个库有命名冲突的时候
        - ``import 'package:http/http.dart' as http``  
    - 部分导入
        - ``import 'package:lib1/lib1.dart' show foo;``
        - ``import 'package:lib2/lib2.dart' hide foo;``
    - 延迟加载（懒加载）
        - 使用关键字deferred as来指定
        - ``import 'package:deferred/hello.dart' deferred as hello;``
        - 当需要使用的时候，需要使用loadLibrary()方法来加载
        -```useLib() async {
            await hello.loadLibrary();
            hello.printGreeting();
         }```


