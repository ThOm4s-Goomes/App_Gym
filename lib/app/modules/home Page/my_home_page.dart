import 'package:app_gym/app/modules/home%20Page/mixin/my_home_page_mixin.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with HomePageMixin {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        body: Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          color: Colors.black,
          child: Column(
            children: [
              appBarCustom(),
              const SizedBox(height: 20),
              listViewCardOne(context),
              const SizedBox(height: 30),
              listViewCardTow(context),
            ],
          ),
        ),
      );
    });
  }
}
