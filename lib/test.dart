import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Shoes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Shoes',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _buildShoeCard(
              'Nike SB Zoom Blazer\nMid Premium',
              '78,795',
            ),
            _buildShoeCard(
              'Nike Air Zoom Pegasus\nMen\'s Road Running Shoes',
             
              '29,995',
            ),
            _buildShoeCard(
              'Nike ZoomX Vaporfly\nMen\'s Road Racing Shoe',
              '219,695',
            ),
            _buildShoeCard(
              'Nike Air Force 1 50\nOlder Kids\' Shoe',
              '26.295',
            ),
            _buildShoeCard(
              'Nike Waffle One\nMen\' s Shoe',
              '29,995',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShoeCard(String title, String price) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const SizedBox(width: 16),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    '₹ $price',
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}