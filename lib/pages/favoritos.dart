import 'package:flutter/material.dart';
import 'package:perfil/models/favoritos_carros.dart';
import 'package:provider/provider.dart';



class PageFavoritos extends StatefulWidget {
  const PageFavoritos({super.key});

  @override
  State<PageFavoritos> createState() => _PageFavoritosState();
}

class _PageFavoritosState extends State<PageFavoritos> {
  @override
  Widget build(BuildContext context) {
    //terminar de consumir o provider (pegando a lista de carros favoritos)
    //depois iremos conectar a uma API externa
    return Consumer<FavoritosCarros>(
      builder: (context, fav, child) => Text(
        "Quantidade de carros favoritos: ${fav.carros.length}",
        style: const TextStyle(fontSize: 48),
      ),
    );
  }
}