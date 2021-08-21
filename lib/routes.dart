import 'package:get/get.dart';
import 'package:hng_task/result.dart';
import 'package:hng_task/webview.dart';

import 'home.dart';

class Routes {
  static final routes = [
    GetPage(
      name: '/',
      page: () => Home(),
    ),
    GetPage(
      name: '/hng',
      page: () => HNG(),
    ),
    GetPage(
      name: '/result',
      page: () => Result(),
    ),
  ];
}
