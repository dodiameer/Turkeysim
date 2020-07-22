import 'package:flutter/material.dart';

class LocationDetailsWidget extends StatelessWidget {
  final _name;
  final _description;
  final _image;
  LocationDetailsWidget(this._name, this._description, this._image);

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          child: Image.network(this._image),
          constraints: BoxConstraints.expand(height: 300),
          decoration: BoxDecoration(color: Colors.blue[50]),
        ),
        Container(
            child: Text(
              this._name,
              style: Theme.of(context).primaryTextTheme.headline2,
            ),
            margin: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0)),
        Container(
            child: Text(
              this._description,
              style: Theme.of(context).primaryTextTheme.bodyText1,
            ),
            margin: EdgeInsets.fromLTRB(12.0, 4.0, 12.0, 4.0))
      ],
    );
  }
}
