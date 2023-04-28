import 'package:flutter_modular/flutter_modular.dart';

import '../common/firebase/main page/main_page_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: MainPageModule()),
  ];
}
