import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List tileColors = [
      Colors.purpleAccent,
      Colors.cyanAccent,
      Colors.redAccent,
      Colors.grey,
    ];

    List productTitle = [
      'Nike Air Zoom Pegasus',
      'Nike Zoom Blazer',
      'Nike Zoom',
      'New Basket',
    ];

    List productDescription = [
      'Mid Premium',
      'Premium Shoes',
      'Best Seller',
      'Low-end Shoes',
    ];

    List productPrices = [
      'Rp. 500.000',
      'Rp. 250.000',
      'Rp. 300.000',
      'Rp. 50.000',
    ];

    List imagePath = [
      'assets/1.jpg',
      'assets/2.jpg',
      'assets/3.jpg',
      'assets/4.jpg',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoes'),
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.grey,
          ),
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: ListView.builder(
          itemCount: tileColors.length,
          itemBuilder: (context, index) => Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: tileColors[index],
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(productTitle[index]),
                        Text(productDescription[index]),
                        Text(productPrices[index])
                      ],
                    ),
                    Image.asset(
                      imagePath[index],
                      height: 75,
                    ),
                  ],
                ),
              )),
    );
  }
}
