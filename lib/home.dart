import 'package:ersys_client/core/data/card_module.dart';
import 'package:ersys_client/core/theme/pallete.dart';
import 'package:ersys_client/core/widget/card_module.dart';
import 'package:ersys_client/core/widget/carousel_slider.dart';
import 'package:ersys_client/core/widget/footer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 250, child: CarouselSlider(items: cardModuleItem)),
          SizedBox(
              height: 440,
              child: ListView.builder(
                  itemCount: cardModuleItem.length,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  itemBuilder: (BuildContext context, int index) {
                    return CardModule(
                      imageUrl: cardModuleItem[index].imageUrl,
                      title: cardModuleItem[index].title,
                    );
                  })),
          const Footer()
        ],
      ),
    );
  }
}
