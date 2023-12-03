import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:perfil/models/carro.dart';

class ApiService {
  static const String baseUrl = 'https://parallelum.com.br/fipe/api/v2';

  Future<List<Carro>> getCarros(String type, String brand, String model) async {
    final response = await http.get(
      Uri.parse('$baseUrl/$type/brands/$brand/models/$model/years'),
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => Carro.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load cars');
    }
  }
}
