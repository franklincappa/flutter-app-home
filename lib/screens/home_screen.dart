import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        //padding: EdgeInsets.all(10),
        width: double.infinity,
        height: 350,
        decoration: const BoxDecoration(color: Colors.white),
        child: Container(
          //padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: const Row(
                  children: [
                    CircleAvatar(child: Text("FC")),
                    SizedBox(width: 10),
                    Text(
                      "Franklin Cappa",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: const Color.fromARGB(255, 5, 95, 151),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 250,
                child: Image.network(
                  "https://manaosoftware.com/wp-content/uploads/2023/08/why-use-flutter.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),

      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
