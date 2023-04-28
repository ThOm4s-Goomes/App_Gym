import 'package:app_gym/app/modules/Sing%20Up/my_sign_up_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../common/navigator_bar/navigator_bar_page.dart';
import '../home Page/my_home_page.dart';
import 'my_sign_in_page.dart';

class MyPageLoginModule extends Module {
  @override
  final List<Bind> binds = [
    // Bind.lazySingleton((i) => MyPageLoginStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => Login()),
    ChildRoute('/sign-up', child: (_, args) => const SignUp()),
    ChildRoute('/home-page', child: (_, args) => const HomePage()),
    ChildRoute('/home-page-navbar', child: (_, args) => const NavigatorBarPage()),
  ];
}
