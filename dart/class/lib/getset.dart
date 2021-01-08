// get  set类似js里面的
class Rect {
  num height;
  num width;
  Rect(this.height, this.width);
  // 设置初始值 和上面的不能同时存在
  // Rect():height=2,width=10{}
  get area {
    return this.width * this.height;
  }

  set areaHeight(num value) {
    this.height = value;
  }
}
