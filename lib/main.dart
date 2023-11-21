import 'package:flutter/material.dart';
import 'package:perfil/pages/carros.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'InfoCar',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey.shade300),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'InfoCar App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectIndex = 0;
  List<Widget> pages = const [
    PageCar(),
    Text("2"),
    Text("3"),
  ];

  void _changeIndex(int value) {
    setState(() {
      _selectIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: const Color.fromRGBO(234, 234, 234, 1),
        leading: const Icon(Icons.menu), 
        title: Text(widget.title),
        actions: const [
          Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.search),
          ),
        ],
      ),
      body: Center(
       child: pages.elementAt(_selectIndex),
      ),
        bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.directions_car_outlined), label: 'Carros'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: 'Favoritos'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Perfil'),

        ],
        currentIndex: _selectIndex,
        onTap: _changeIndex,
      ),
    );
  }
}
