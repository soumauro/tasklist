import 'package:get/get.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    final connect = GetConnect();
    connect.httpClient.timeout = const Duration(seconds: 30);
    Get.put(connect);
  }
}
