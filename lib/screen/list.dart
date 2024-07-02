import 'package:flutter/material.dart';
import 'package:test_2/service/room_service.dart';
import 'package:test_2/model/room.dart';
import 'package:test_2/widget/room_single.dart';

class ListScreen extends StatelessWidget {
  ListScreen({super.key});

  final RoomService roomService = RoomService();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Text('List'),
          FutureBuilder(
            future: roomService.getAll(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Room>> snapshot) {
              if (snapshot.hasData) {
                List<Room>? rooms = snapshot.data;
                return ListView(
                  shrinkWrap: true,
                  children: rooms!
                      .map(
                        (Room room) => ListTile(
                          leading: Image.network(room.image ?? ''),
                          title: Text(room.nom ?? 'X'),
                          subtitle: Text("${room.tarif} € / semaine"),
                          trailing: const Icon(Icons.arrow_right),
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => RoomSingle(room: room),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          )
        ],
      ),
    );
  }
}
