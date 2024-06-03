import 'package:ersys_client/shared/core/theme/pallete.dart';
import 'package:ersys_client/shared/domain/entities/card_entity.dart';
import 'package:flutter/material.dart';

class SliderInfoWidget extends StatelessWidget {
  late List<CardEntity>  _items;
  late int _index = 0;
  SliderInfoWidget({super.key, required int index, required List<CardEntity> items}) {
    _items = items;
    _index = index;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 50),
      padding: const EdgeInsets.symmetric(horizontal: 2),
      color: AppPallete.white70,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
            style: const TextStyle(
                color: AppPallete.primary,
                fontWeight: FontWeight.bold,
                fontSize: 17),
            textAlign: TextAlign.center,
            _items[_index].title.toUpperCase()),
        Text(
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            textAlign: TextAlign.center,
            _items[_index].description),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppPallete.scondary,
              foregroundColor: AppPallete.white,
            ),
            child: Text(
                _items[_index].buttonTitle.toUpperCase()))
      ]),
    );
  }
}
