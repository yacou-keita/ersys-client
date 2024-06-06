import 'package:ersys_client/landing_module/core/data/card_data.dart';
import 'package:ersys_client/landing_module/core/data/carousel_data.dart';
import 'package:ersys_client/landing_module/presentation/widgets/card_module_widget.dart';
import 'package:ersys_client/landing_module/presentation/widgets/carousel_slider/carousel_slider_widget.dart';
import 'package:ersys_client/shared/core/theme/color.dart';
import 'package:ersys_client/shared/domain/entities/card_entity.dart';
import 'package:ersys_client/shared/presentation/widgets/footer_widget.dart';
import 'package:ersys_client/shared/presentation/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

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
                          BorderSide(color: AppColors.primary, width: 1.0))),
              child: TitleWidget(
                title: "services en ligne".toUpperCase(),
                color: AppColors.scondary,
                fontSize: 25,
              )),
          Expanded(
            flex: 3,
            child: ListView.builder(
                itemCount: cardData.length,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                itemBuilder: (BuildContext context, int index) {
                  CardEntity card = cardData[index];
                  return CardModuleWidget(
                    imageUrl: card.imageUrl,
                    title: card.title,
                    onTap: () {
                      Navigator.of(context).pushNamed(card.link);
                    },
                  );
                }),
          ),
          const Expanded(flex: 0, child: FooterWidget())
        ],
      ),
    );
  }
}
