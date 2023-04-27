import 'package:app_gym/app/modules/Sing%20Up/my_sign_up_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MyPageSignUpinModule extends Module {
  @override
  final List<Bind> binds = [
    // Bind.lazySingleton((i) => MyPageLoginStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const SignUp()),
  ];
}
