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
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 35, 8, 0),
      child: Column(children: [
        Center(
          child: Container(
            width: 380,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12)),
            child: const Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text('Marcas'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text('Ver Todas'),
                  ),
                ],
              ),
            ],
            ),
          ),
          
        )
      ],
      ),
      
    );
  }
}