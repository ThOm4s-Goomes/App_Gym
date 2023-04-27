import 'package:flutter/material.dart';

import 'mixin/my_sign_up_mixin.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with SignUpMixin {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: height,
          width: width,
          child: Stack(
            children: [
              Image.asset('assets/1.jpg', fit: BoxFit.cover, width: double.infinity, height: double.infinity),
              Align(alignment: Alignment.bottomCenter, child: Container(height: 250, width: 400, color: Colors.black)),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  logo(),
                  const SizedBox(height: 100),
                  form(),
                  const SizedBox(height: 20),
                  buttomPrimary(),
                  const SizedBox(height: 20),
                ],
              ),
              buttomOutline(),
            ],
          ),
        ),
      ),
    );
  }
}
