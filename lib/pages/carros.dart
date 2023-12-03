import 'package:flutter/material.dart';
import 'package:perfil/pages/widgets/carros_disponiveis.dart';
import 'package:perfil/pages/widgets/mais_acessados.dart';
import 'package:perfil/pages/widgets/marcas.dart';

class PageCar extends StatefulWidget {
  const PageCar({super.key});

  @override
  State<PageCar> createState() => _PageCarState();
}

class _PageCarState extends State<PageCar> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(8, 35, 8, 0),
      child: Column(
        children: [
          Marcas(),
          //Fim do card marcas
          SizedBox(
            height: 20,
          ),
          CarrosDisponiveis(),
          //fim do carros disponiveis
          SizedBox(
            height: 20,
          ),
          MaisAcessados(),
        ],
      ),
    );
  }
}