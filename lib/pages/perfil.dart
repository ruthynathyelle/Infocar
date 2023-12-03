import 'package:flutter/material.dart';
import 'package:perfil/models/carro.dart';

class PagePerfil extends StatefulWidget {
  const PagePerfil({super.key});

  @override
  State<PagePerfil> createState() => _PagePerfilState();
}

class _PagePerfilState extends State<PagePerfil> {
  late Future<Carro> carroFuture;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Carro>(
      future: carroFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Column(
            children: [
              Text(snapshot.data!.descricao),
              Text(snapshot.data!.modelo),
            ],
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        // By default, show a loading spinner.
        return const CircularProgressIndicator();
      },
    );
  }
}