import 'package:escola/outrapagina.dart';
import 'package:get/get_navigation/get_navigation.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(name: PageRoutes.inicialRoute, page: () => SegundaTela())
  ];
}

abstract class PageRoutes {
  static const String inicialRoute = '/';
}
