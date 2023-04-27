import 'package:flutter/material.dart';

import 'mixin/profile_page_mixin.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with ProfilePageMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            appCustomProfile(),
            const SizedBox(height: 30),
            circleAvatar(),
            form(),
            const SizedBox(height: 20),
            buttomPrimary(),
          ],
        ),
      ),
    );
  }
}
