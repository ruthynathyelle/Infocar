import 'package:flutter/material.dart';

class CarrosDisponiveis extends StatelessWidget {
  const CarrosDisponiveis({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(20),
      tileColor: const Color.fromRGBO(224, 234, 255, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      title: const Text(
        "Carros disponíveis",
        style: TextStyle(fontSize: 28),
      ),
      subtitle: const Text("Confira a lista completa"),
      trailing: Container(
        width: 60,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: const Text(
          ">",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}