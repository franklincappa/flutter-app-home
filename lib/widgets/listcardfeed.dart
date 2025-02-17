import 'package:feed_cards/data/data.dart';
import 'package:feed_cards/widgets/cardfeed.dart';
import 'package:flutter/material.dart';

class ListCardFeed extends StatelessWidget {
  const ListCardFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listCard.length,
      itemBuilder: (context, index) {
        return CardFeed(card: listCard[index]);
      },
    );
  }
}
