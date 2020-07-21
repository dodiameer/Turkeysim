import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../card/card.dart' as CustomCards;

class LocationList extends StatelessWidget {
  // final locationUrl = "https://storage.googleapis.com/turkeysim/locations.json";
  final locationUrl = "http://10.0.2.2:8000/locations.json";
  Future fetchLocations() async {
    final response = await http.get(locationUrl);
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception("Couldn't load location data");
    }
  }

  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchLocations(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return CustomCards.LocationCard(
                  snapshot.data[index]["image"],
                  snapshot.data[index]["name"],
                  snapshot.data[index]["short_description"]);
            },
          );
        }
        if (snapshot.hasError) {
          return Center(
            child: Text(
              "Error: ${snapshot.error}",
              style: TextStyle(fontSize: 16.0),
            ),
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
    // return ListView(
    //   children: <Widget>[
    //     CustomCards.LocationCard(
    //         "https://storage.googleapis.com/turkeysim/images/ayasofya.jpg",
    //         "Ayasofia",
    //         "A great location 10/10 would recommend")
    //   ],
    // );
  }
}
