import 'package:escola/presenter/tasks/tasks_bindings.dart';
import 'package:escola/presenter/tasks/tasks_page.dart';
import 'package:get/get_navigation/get_navigation.dart';

class AppPages {
  static final pages = <GetPage>[
    GetPage(
      name: TasksPage.route,
      page: () => const TasksPage(),
      binding: TasksBindings(),
    )
  ];
}
