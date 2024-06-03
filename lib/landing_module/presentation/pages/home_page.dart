import 'package:ersys_client/landing_module/core/data/card_data.dart';
import 'package:ersys_client/landing_module/core/data/carousel_data.dart';
import 'package:ersys_client/landing_module/presentation/widgets/card_module_widget.dart';
import 'package:ersys_client/landing_module/presentation/widgets/carousel_slider/carousel_slider_widget.dart';
import 'package:ersys_client/shared/core/theme/pallete.dart';
import 'package:ersys_client/shared/core/widgets/footer.dart';
import 'package:ersys_client/shared/domain/entities/card_entity.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  List<CardEntity> getActiveItem(List<CardEntity> items) {
    return items.where((item) => item.isActive == true).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: CarouselSliderWidget(items: getActiveItem(carouselData)),
          ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              padding: const EdgeInsets.only(bottom: 2),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: AppPallete.primary, width: 1.0))),
              child: Text(
                "services en ligne".toUpperCase(),
                style: const TextStyle(
                    color: AppPallete.scondary,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              )),
          Expanded(
            flex: 3,
            child: ListView.builder(
                itemCount: cardData.length,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                itemBuilder: (BuildContext context, int index) {
                  return CardModuleWidget(
                    imageUrl: cardData[index].imageUrl,
                    title: cardData[index].title,
                  );
                }),
          ),
          const Expanded(flex: 0,child: Footer())
        ],
      ),
    );
  }
}
