import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

mixin SignUpMixin {
  Widget logo() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/4.png', width: 40, color: const Color(0xFF00B37E)),
            const SizedBox(width: 20),
            const Text('Ignite Gym', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30)),
          ],
        ),
        const Text('Treine sua mente e o seu corpo', style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 15)),
      ],
    );
  }

  Widget form() {
    return Column(
      children: [
        const Text('Acesse sua conta', style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20)),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.black),
            child: TextFormField(
              decoration: const InputDecoration(border: InputBorder.none, contentPadding: EdgeInsets.all(20), hintText: 'Nome', hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.black),
            child: TextFormField(
              decoration: const InputDecoration(border: InputBorder.none, contentPadding: EdgeInsets.all(20), hintText: 'E-mail', hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.black),
            child: TextFormField(
              decoration: const InputDecoration(border: InputBorder.none, contentPadding: EdgeInsets.all(20), hintText: 'Senha', hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.black),
            child: TextFormField(
              decoration: const InputDecoration(border: InputBorder.none, contentPadding: EdgeInsets.all(20), hintText: 'Confirme aSenha', hintStyle: TextStyle(color: Colors.grey)),
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
        child: TextButton(onPressed: () {}, child: const Text('Criar e acessar', style: TextStyle(color: Colors.white))),
      ),
    );
  }

  Widget buttomOutline() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 400,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: const Color(0xFF00875F),
                ),
                color: Colors.black,
              ),
              child: TextButton(onPressed: () => Modular.to.navigate('/'), child: const Text('Voltar para o login', style: TextStyle(color: Color(0xFF00875F), fontWeight: FontWeight.bold))),
            ),
          ],
        ),
      ),
    );
  }
}
