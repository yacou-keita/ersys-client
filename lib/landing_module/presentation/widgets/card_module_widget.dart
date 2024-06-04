import 'package:ersys_client/shared/presentation/widgets/image_placeholder_wiget.dart';
import 'package:ersys_client/shared/presentation/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class CardModuleWidget extends StatelessWidget {
  late final String _imageUrl, _title;
  late final void Function()? _onTap;

  CardModuleWidget(
      {super.key, required title, required imageUrl, void Function()? onTap}) {
    _imageUrl = imageUrl;
    _title = title;
    _onTap = onTap;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Card(
        elevation: 15.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            ImagePlacehoderWidget(imagePath: _imageUrl),
            TitleWidget(title: _title)
          ]),
        ),
      ),
    );
  }
}
