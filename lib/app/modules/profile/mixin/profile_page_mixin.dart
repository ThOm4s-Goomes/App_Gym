import 'package:flutter/material.dart';

mixin ProfilePageMixin {
  Widget appCustomProfile() {
    return Container(
      width: 400,
      height: 100,
      color: const Color(0xFF202024),
      child: const Padding(
          padding: EdgeInsets.only(right: 20, left: 20, top: 30),
          child: Center(
            child: Text(
              'Perfil',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
            ),
          )),
    );
  }

  Widget circleAvatar() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                width: 1,
                color: Colors.grey,
              )),
          child: const CircleAvatar(
            maxRadius: 70,
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage('assets/7.jpg'),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Alterar foto',
            style: TextStyle(color: Color(0xFF00B37E), fontSize: 16),
          ),
        ),
      ],
    );
  }

  Widget form() {
    return Column(
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: const Color(0xFF202024)),
            child: TextFormField(
              decoration: const InputDecoration(border: InputBorder.none, contentPadding: EdgeInsets.all(20), hintText: 'Thomas Gomes', hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: const Color(0xFF202024)),
            child: TextFormField(
              decoration: const InputDecoration(border: InputBorder.none, contentPadding: EdgeInsets.all(20), hintText: 'thomas.gomes@solstar.com.br', hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
        ),
        const SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Row(children: const [Text('Alterar senha', style: TextStyle(color: Colors.white))]),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: const Color(0xFF202024)),
            child: TextFormField(
              decoration: const InputDecoration(border: InputBorder.none, contentPadding: EdgeInsets.all(20), hintText: 'Senha antiga', hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: const Color(0xFF202024)),
            child: TextFormField(
              decoration: const InputDecoration(border: InputBorder.none, contentPadding: EdgeInsets.all(20), hintText: 'Nova senha', hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
        ),
      ],
    );
  }

  Widget buttomPrimary() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        width: 400,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xFF00875F),
        ),
        child: TextButton(onPressed: () {}, child: const Text('Atualizar', style: TextStyle(color: Colors.white))),
      ),
    );
  }
}
