import 'package:flutter/material.dart';
import '../../models/location/location.dart';
import '../../widgets/location_details/location_details.dart';

class LocationDetailsScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    final Location args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.shortName),
        textTheme: Theme.of(context).primaryTextTheme,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      body: LocationDetailsWidget(args.name, args.description, args.image),
    );
  }
}
