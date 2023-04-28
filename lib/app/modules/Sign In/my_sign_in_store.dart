import 'package:mobx/mobx.dart';

part 'my_sign_in_store.g.dart';

class SignInStore = _SignInStoreBase with _$SignInStore;

abstract class _SignInStoreBase with Store {}
