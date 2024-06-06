import 'package:ersys_client/shared/core/theme/color.dart';
import 'package:flutter/material.dart';

class SliderIndicatorWidget extends StatelessWidget {
  late final int _itemLength;
  late final int _activePage;
  late final void Function(int)? _onTap;

  SliderIndicatorWidget(
      {super.key,
      required final int itemLength,
      required int activePage,
      void Function(int)? onTap}) {
    _itemLength = itemLength;
    _activePage = activePage;
    _onTap = onTap;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              _itemLength,
              (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: GestureDetector(
                      onTap: () => _onTap!(index),
                      child: CircleAvatar(
                        backgroundColor: _activePage == index
                            ? AppColors.primary
                            : AppColors.grey,
                        radius: 4,
                      ),
                    ),
                  ))),
    );
  }
}
