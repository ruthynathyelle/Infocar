// lib/services/api_service.dart

import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl;

  ApiService(this.baseUrl);

  Future<http.Response> get(String endpoint) {
    final url = Uri.parse('$baseUrl$endpoint');
    return http.get(url);
  }
}
