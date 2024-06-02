import 'dart:async';

import 'package:ersys_client/core/data/card_module.dart';
import 'package:ersys_client/core/theme/pallete.dart';
import 'package:flutter/material.dart';

int _activePage = 0;
final PageController _pageController = PageController(initialPage: 0);
late Timer _timer;

class CarouselSlider extends StatefulWidget {
  final List<CardModuleEntity> items;

  const CarouselSlider({super.key, required this.items});

  @override
  State<CarouselSlider> createState() => _CarouselSliderState();

}

class _CarouselSliderState extends State<CarouselSlider> {

   void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_pageController.page == widget.items.length - 1) {
      _pageController.animateToPage(0,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
      return;
    }
    _pageController.nextPage(
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    });
  }


  @override
  void initState() {
    super.initState();
    startTimer();
  }

  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  _activePage = value;
                });
              },
              itemCount: widget.items.length,
              itemBuilder: (context, index) {
                return const ImagePlacehoder(
                    imagePath: "assets/images/Mme Souame 17 mai 2023-10.jpg");
              }),
        ),
        Positioned(
          bottom: 4,
          left: 0,
          right: 0,
          child: Container(
            color: Colors.transparent,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    widget.items.length,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: GestureDetector(
                            onTap: () {
                              _pageController.animateToPage(index,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn);
                            },
                            child: CircleAvatar(
                              backgroundColor: _activePage == index
                                  ? AppPallete.primary
                                  : AppPallete.grey,
                              radius: 4,
                            ),
                          ),
                        ))),
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

}



class ImagePlacehoder extends StatelessWidget {
  final String imagePath;
  const ImagePlacehoder({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      fit: BoxFit.cover,
    );
  }
}
