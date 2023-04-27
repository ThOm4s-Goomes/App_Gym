import 'package:flutter/material.dart';

mixin ActivitHistoriMixin {
  Widget appCustomProfile() {
    return Container(
      width: 400,
      height: 100,
      color: const Color(0xFF202024),
      child: const Padding(
          padding: EdgeInsets.only(right: 20, left: 20, top: 30),
          child: Center(
            child: Text(
              'Histórico de Exercícios',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
            ),
          )),
    );
  }
}
