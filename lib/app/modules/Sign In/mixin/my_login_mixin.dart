import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

mixin LoginMixin {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

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
              controller: _emailController,
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
                hintText: 'E-mail',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.black),
            child: TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
                hintText: 'Senha',
                hintStyle: TextStyle(color: Colors.grey),
              ),
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
        child: TextButton(
          onPressed: signIn,
          child: const Text(
            'Acessar',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget buttomOutline() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text('Ainda não tem acesso?', style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 15)),
          const SizedBox(height: 10),
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
            child: TextButton(
              onPressed: () => Modular.to.navigate('/sign-up'),
              child: const Text('Criar conta', style: TextStyle(color: Color(0xFF00875F), fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}
