import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  final String _imgPath;
  final String _title;
  final String _description;
  LocationCard(this._imgPath, this._title, this._description);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16.0),
        margin: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 8.0,
                spreadRadius: 4.0,
                offset: Offset.zero)
          ],
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Image.network(this._imgPath),
                decoration: BoxDecoration(color: Colors.blue[50]),
                constraints: BoxConstraints.expand(height: 250.0),
              ),
              Container(
                child: Text(
                  _title,
                  style: Theme.of(context).primaryTextTheme.headline1,
                ),
                padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0),
              ),
              Container(
                  child: Text(
                    _description,
                    style: TextStyle(fontSize: 20.0),
                  ),
                  padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0))
            ]));
  }
}
