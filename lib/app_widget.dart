import 'package:escola/app_bindings.dart';
import 'package:escola/presenter/tasks/tasks_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/app_pages.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialBinding: AppBindings(),
      initialRoute: TasksPage.route,
      getPages: AppPages.pages,
    );
  }
}