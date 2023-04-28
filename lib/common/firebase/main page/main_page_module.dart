import 'package:flutter_modular/flutter_modular.dart';

import 'main_page.dart';

class MainPageModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const MainPage()),
  ];
}
