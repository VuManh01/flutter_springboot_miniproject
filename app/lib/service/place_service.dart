import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/Place.dart';


class PlaceService {
  static const String baseUrl = 'http://10.0.2.2:8080/api/places'; // Android emulator dùng 10.0.2.2 để gọi localhost

  static Future<List<Place>> getAllPlaces() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      // ép Flutter decode dữ liệu về bằng UTF-8
      final decoded = utf8.decode(response.bodyBytes);
      final List jsonData = json.decode(decoded);
      return jsonData.map((e) => Place.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load places');
    }
  }
}
