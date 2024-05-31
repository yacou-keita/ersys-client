import 'package:flutter/material.dart';

class CardModule extends StatelessWidget {
  late final String _imageUrl, _title;

  CardModule({super.key, required title, required imageUrl}) {
    _imageUrl = imageUrl;
    _title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      child: Column(children: [Image.asset(_imageUrl), Text(_title)]),
    );
  }
}