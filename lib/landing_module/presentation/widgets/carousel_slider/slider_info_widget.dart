import 'package:ersys_client/shared/core/theme/color.dart';
import 'package:ersys_client/shared/domain/entities/card_entity.dart';
import 'package:ersys_client/shared/presentation/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class SliderInfoWidget extends StatelessWidget {
  late final List<CardEntity> _items;
  late final int _index;
  SliderInfoWidget(
      {super.key, int index = 0, required List<CardEntity> items}) {
    _items = items;
    _index = index;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 50),
      padding: const EdgeInsets.symmetric(horizontal: 2),
      color: AppColors.white70,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        TitleWidget(title: _items[_index].title.toUpperCase()),
        Text(
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            textAlign: TextAlign.center,
            _items[_index].description),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.scondary,
              foregroundColor: AppColors.white,
            ),
            child: Text(_items[_index].buttonTitle.toUpperCase()))
      ]),
    );
  }
}
