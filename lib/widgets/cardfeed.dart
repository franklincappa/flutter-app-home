import 'package:feed_cards/widgets/buttonscard.dart';
import 'package:feed_cards/widgets/descriptioncard.dart';
import 'package:feed_cards/widgets/imagecard.dart';
import 'package:feed_cards/widgets/titlecard.dart';
import 'package:flutter/material.dart';

class CardFeed extends StatelessWidget {
  const CardFeed({super.key, required this.card});

  final Map<String, String> card;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      //padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 450,
      decoration: const BoxDecoration(color: Colors.white),
      child: Container(
        //padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: TitleCard(name: card["name"]!),
            ),
            DescriptionCard(description: card["description"]!),
            ImageCard(urlImage: card["image"]!),
            Container(child: ButtonsCard()),
            /*Container(
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
            ),*/
          ],
        ),
      ),
    );
  }
}
