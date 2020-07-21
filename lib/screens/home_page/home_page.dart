import 'package:flutter/material.dart';
import '../../widgets/location_list/location_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tukeysim"),
        textTheme: Theme.of(context).primaryTextTheme,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey[100],
      body: Container(child: LocationList()),
    );
  }
}
