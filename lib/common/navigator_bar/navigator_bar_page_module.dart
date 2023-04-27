import 'package:flutter_modular/flutter_modular.dart';

import 'navigator_bar_page.dart';

class NavigatorBarModule extends Module {
  @override
  final List<Bind> binds = [
    // Bind.lazySingleton((i) => MyPageLoginStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/home-page-navbar', child: (_, args) => const NavigatorBarPage()),
  ];
}
