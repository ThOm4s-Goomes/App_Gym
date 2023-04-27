import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter/material.dart';

import 'navigator_bar_store.dart';

class NavigatorBarPage extends StatefulWidget {
  const NavigatorBarPage({super.key});

  @override
  State<NavigatorBarPage> createState() => _NavigatorBarPageState();
}

class _NavigatorBarPageState extends State<NavigatorBarPage> {
  final NavigatorBarStore store = NavigatorBarStore();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Scaffold(
        body: store.telas[store.selectedIndex],
        bottomNavigationBar: SizedBox(
          height: 70,
          child: BottomNavigationBar(
            elevation: 0,
            currentIndex: store.selectedIndex,
            onTap: store.setSelectedIndex,
            fixedColor: const Color(0xFF00875F),
            unselectedItemColor: Colors.grey,
            backgroundColor: const Color(0xFF202024),
            items: const [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/8.png')), label: ""),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/9.png')), label: ""),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/10.png')), label: ""),
            ],
          ),
        ),
      );
    });
  }
}
