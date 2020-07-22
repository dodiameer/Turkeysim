import 'package:flutter/material.dart';
import '../../models/location/location.dart';

class LocationDetails extends StatelessWidget {
  Widget build(BuildContext context) {
    final Location args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Tukeysim"),
        textTheme: Theme.of(context).primaryTextTheme,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: Container(
          child: Center(
        child: Text(args.name),
      )),
    );
  }
}
