// lib/widget/room_single.dart

import 'package:flutter/material.dart';
import 'package:test_2/model/room.dart';

class RoomSingle extends StatelessWidget {
  final Room room;

  const RoomSingle({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Text(room.nom ?? ''),
      ),
    );
  }
}
