import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:perfil/models/carro.dart';
import 'package:perfil/services/api_service.dart';

class PagePerfil extends StatefulWidget {
  const PagePerfil({Key? key}) : super(key: key);

  @override
  State<PagePerfil> createState() => _PagePerfilState();
}

class _PagePerfilState extends State<PagePerfil> {
  final ApiService apiService = ApiService('http://deividfortuna.github.io/fipe/v2/');

  late Future<Carro> carroFuture;

  @override
  void initState() {
    super.initState();
    carroFuture = _loadCarro();
  }

  Future<Carro> _loadCarro() async {
    try {
      final response = await apiService.get('/carro/1');
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        return Carro(
          modelo: data['modelo'], // Corrigir para 'modelo' em vez de 'model'
          marca: data['marca'],
          valor: data['valor'],
          descricao: data['descricao'],
          imgUrl: data['imgUrl'],
        );
      } else {
        throw Exception('Falha ao carregar dados do carro');
      }
    } catch (e) {
      throw Exception('Erro ao se conectar à API: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Carro>(
      future: carroFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Erro: ${snapshot.error}');
        } else if (snapshot.hasData) {
          return Column(
              children: [
                Text('Marca: ${snapshot.data!.marca}'), // Corrigir para 'marca' em vez de 'brand'
                Text('Modelo: ${snapshot.data!.modelo}'), // Corrigir para 'modelo' em vez de 'model'
                // Adicione outros widgets para mostrar outros dados do carro conforme necessário
              ],
            );

              // Adicione outros widgets para mostrar outros dados do carro conforme necessário

        } else {
          return const Text('Nenhum dado disponível');
        }
      },
    );
  }
}
