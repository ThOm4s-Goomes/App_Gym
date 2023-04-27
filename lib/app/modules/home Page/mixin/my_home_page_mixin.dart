import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../common/navigator_bar/navigator_bar_store.dart';

mixin HomePageMixin {
  final NavigatorBarStore store = NavigatorBarStore();

  Widget appBarCustom() {
    return Container(
      width: 400,
      height: 150,
      color: const Color(0xFF202024),
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  maxRadius: 30,
                  backgroundImage: AssetImage('assets/7.jpg'),
                  backgroundColor: Colors.grey,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Olá,', style: TextStyle(color: Colors.white)),
                    Text('Rodrigo Gonçalves', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(width: 130),
                InkWell(
                  onTap: () => Modular.to.navigate('/'),
                  child: Row(
                    children: [
                      Image.asset('assets/5.png', width: 20, color: const Color(0xFFC4C4CC)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget listViewCardOne(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 20),
        itemBuilder: (BuildContext context, index) {
          return InkWell(
            onTap: () => {},
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: const Card(
              color: Color(0xFF202024),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: SizedBox(
                width: 100,
                child: Center(
                  child: Text('Costas', style: TextStyle(color: Colors.grey, fontSize: 15)),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget listViewCardTow(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [Text('Exercícios', style: TextStyle(color: Colors.white)), Text('4', style: TextStyle(color: Colors.white))],
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(right: 25, left: 5),
          child: SizedBox(
            height: 483,
            child: ListView.builder(
              itemCount: 2,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.only(left: 20),
              itemBuilder: (BuildContext context, index) {
                return InkWell(
                  onTap: () => {},
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Card(
                    color: const Color(0xFF202024),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/1.jpg', width: 110),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Puxada Frontal', style: TextStyle(color: Colors.white)),
                                  SizedBox(height: 3),
                                  Text('3 séries x 12 repetições', style: TextStyle(color: Colors.grey)),
                                ],
                              ),
                              const SizedBox(width: 40),
                              const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                                size: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
