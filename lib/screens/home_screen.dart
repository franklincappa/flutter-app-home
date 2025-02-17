import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: Colors.grey,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );

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
        height: 550,
        decoration: const BoxDecoration(color: Colors.white),
        child: Container(
          //padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Text(
                  "Este es un texto de prueba de post, que puede ser grande y requiere espacio para visualización y que los demás componentes posteriores se desplacen, y aún asi sea visible en el container y no ocasiones Overflow",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Container(
                width: double.infinity,
                height: 280,
                child: Image.network(
                  "https://manaosoftware.com/wp-content/uploads/2023/08/why-use-flutter.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text("Me gusta", style: textStyle),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Comentar", style: textStyle),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Compartir", style: textStyle),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        print("TextButton");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      child: const Text(
                        "Botón elevado",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text("Outlined", style: textStyle),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.android, size: 60),
                    ),
                  ],
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
