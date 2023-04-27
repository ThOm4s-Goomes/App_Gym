import 'package:app_gym/app/modules/home%20Page/my_home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MyHomePage extends Module {
  @override
  final List<Bind> binds = [
    // Bind.lazySingleton((i) => MyPageLoginStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/home-page', child: (_, args) => const HomePage()),
  ];
}
