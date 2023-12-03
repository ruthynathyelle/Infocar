import 'package:flutter/material.dart';

class Marcas extends StatefulWidget {
  const Marcas({super.key});

  @override
  State<Marcas> createState() => _MarcasState();
}

class _MarcasState extends State<Marcas> {
  MarcaItem(String titulo) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/imagens/logo.png",
              width: 48,
            ),
            Text(
              titulo,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //color: Color.fromRGBO(244, 244, 244, 1),
        color: const Color.fromRGBO(212, 212, 212, 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Marcas",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "ver todas",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(53, 85, 255, 1),
                    decorationColor: Color.fromRGBO(53, 85, 255, 1),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            GridView.count(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
              crossAxisCount: 4,
              crossAxisSpacing: 8,
              mainAxisSpacing: 10,
              shrinkWrap: true,
              children: [
                MarcaItem("Acura"),
                MarcaItem("Acura"),
                MarcaItem("Acura"),
                MarcaItem("Acura"),
                MarcaItem("Acura"),
                MarcaItem("Acura"),
                MarcaItem("Acura"),
                MarcaItem("Acura"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
