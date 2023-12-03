import 'package:flutter/material.dart';

class MaisAcessados extends StatefulWidget {
  const MaisAcessados({super.key});

  @override
  State<MaisAcessados> createState() => _MaisAcessadosState();
}

class _MaisAcessadosState extends State<MaisAcessados> {
  CarroItem() => Container(
        margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Image.asset(
              "assets/acura_logo.png",
              width: 48,
            ),
            const Text("INTEGRA"),
            const Text("Acura"),
            Text("\$ 40.000"),
            //Asset da Imagem
            //Titulo do carro - ajustar a fonte para ficar fina
            //Marca do Carro - ajustar a fonte para ficar em negrito (bold)
            //Preço do Carro - ajustar a fonte para ficar fina
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        //color: Color.fromRGBO(244, 244, 244, 1),
        color: const Color.fromRGBO(212, 212, 212, 1),
        borderRadius: BorderRadius.circular(12),
      ),
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Mais acessados",
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) => CarroItem(),
            ),
          ),
        ],
      ),
    );
  }
}