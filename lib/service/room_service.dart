import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:test_2/model/room.dart';

class RoomService {
  final Uri dataURL = Uri.https("img.att.ovh", "/appart.json");

  Future<List<Room>> getAll() async {
    final res = await http.get(dataURL);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Room> datas =
          body.map((dynamic item) => Room.fromJson(item)).toList();
      return datas;
    } else {
      throw "Error. Have a great day.";
    }
  }
}
