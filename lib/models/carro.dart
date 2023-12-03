class Carro {
  String modelo;
  String marca;
  double valor;
  String descricao;
  String imgUrl;

  Carro({
    required this.modelo,
    required this.marca,
    required this.valor,
    required this.descricao,
    required this.imgUrl,
  });

  // Adicione este método para converter de JSON para um objeto Carro
  factory Carro.fromJson(Map<String, dynamic> json) {
    return Carro(
      modelo: json['modelo'],
      marca: json['marca'],
      valor: json['valor'],
      descricao: json['descricao'],
      imgUrl: json['imgUrl'],
    );
  }
}
