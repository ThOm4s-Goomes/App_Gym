import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../app/modules/activity history/activity_history_page.dart';
import '../../app/modules/home Page/my_home_page.dart';
import '../../app/modules/profile/profile_page.dart';
part 'navigator_bar_store.g.dart';

class NavigatorBarStore = _NavigatorBarStoreBase with _$NavigatorBarStore;

abstract class _NavigatorBarStoreBase with Store {
  List<Widget> telas = [
    const HomePage(),
    const ActivityHistoric(),
    const Profile(),
  ];

  @observable
  int selectedIndex = 0;

  @action
  void setSelectedIndex(int index) {
    selectedIndex = index;
  }
}
