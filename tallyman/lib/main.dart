import 'package:flutter/material.dart';
import './models/category_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[400],
          title: const Text("Tallyman"),
        ),
        body: Container(
          
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart), label: "Stats"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings")
          ],
          backgroundColor: Colors.amber[400],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Create our dummy list of containers
  List<Category> initCategories = []
    ..add(Category('Social', 1))
    ..add(Category('Fitness', 1))
    ..add(Category('Tabletop', 1));

  @override
  Widget build(BuildContext build) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[400],
          title: const Text("Tallyman"),
        ),
        body: ListView.builder(
          itemBuilder: (_, index) {
            return Container(
              width: 500,
              height: 500,
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart), label: "Stats"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings")
          ],
          backgroundColor: Colors.amber[400],
        ),
      ),
    );
  }
}
