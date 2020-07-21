import 'package:flutter/material.dart';

import '../card/card.dart' as CustomCards;

class LocationList extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CustomCards.LocationCard(
            "https://storage.googleapis.com/turkeysim/images/ayasofya.jpg",
            "Ayasofia",
            "A great location 10/10 would recommend")
      ],
    );
  }
}
