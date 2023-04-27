import 'package:flutter/material.dart';

import 'mixin/activity_history_mixin.dart';

class ActivityHistoric extends StatefulWidget {
  const ActivityHistoric({super.key});

  @override
  State<ActivityHistoric> createState() => _ActivityHistoricState();
}

class _ActivityHistoricState extends State<ActivityHistoric> with ActivitHistoriMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          appCustomProfile(),
        ],
      ),
    );
  }
}
