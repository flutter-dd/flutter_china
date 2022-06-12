import 'package:flutter/material.dart';

class MyObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('界面[入栈]时调用');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('界面[弹出]时调用');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('界面[移除]时调用');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    print('界面[替换]时调用');
  }

  @override
  void didStartUserGesture(
      Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('用户[手势开始]时调用');
  }

  @override
  void didStopUserGesture() {
    print('用户[手势停止]时调用');
  }
}
