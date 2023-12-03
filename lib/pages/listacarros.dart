// lib/pages/lista_carros_screen.dart

import 'package:flutter/material.dart';
import 'package:perfil/services/api_service.dart';

class ListaCarrosScreen extends StatefulWidget {
  const ListaCarrosScreen({super.key});

  @override
  _ListaCarrosScreenState createState() => _ListaCarrosScreenState();
}

class _ListaCarrosScreenState extends State<ListaCarrosScreen> {
  final ApiService apiService = ApiService('http://deividfortuna.github.io/fipe/v2/');

  @override
  void initState() {
    super.initState();
    _fetchMarcasCarros();
  }

  Future<void> _fetchMarcasCarros() async {
    try {
      final response = await apiService.get('/marcas');
      // Aqui você pode processar a resposta da API
      print('Marcas de carros: ${response.body}');
    } catch (e) {
      print('Erro ao buscar marcas de carros: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Carros'),
      ),
      body: const Center(
        child: Text('Corpo da tela de carros'),
      ),
    );
  }
}
