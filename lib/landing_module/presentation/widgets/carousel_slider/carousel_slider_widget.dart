import 'dart:async';

import 'package:ersys_client/landing_module/presentation/widgets/carousel_slider/slider_info_widget.dart';
import 'package:ersys_client/shared/core/theme/pallete.dart';
import 'package:ersys_client/shared/core/widgets/image_placeholder_wiget.dart';
import 'package:ersys_client/shared/domain/entities/card_entity.dart';
import 'package:flutter/material.dart';

final PageController _pageController = PageController(initialPage: 0);

class CarouselSliderWidget extends StatefulWidget {
  final List<CardEntity> items;
  int _activePage = 0;
  late Timer _timer;

  CarouselSliderWidget({super.key, required this.items});

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  void startTimer() {
    widget._timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      bool isLastPage = _pageController.page == widget.items.length - 1;
      if (isLastPage) {
        _pageController.animateToPage(0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);
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
                  widget._activePage = value;
                });
              },
              itemCount: widget.items.length,
              itemBuilder: (context, index) {
                return ImagePlacehoderWidget(
                    imagePath: widget.items[index].imageUrl);
              }),
        ),
        SliderInfoWidget(
          index: widget._activePage,
          items: widget.items,
        ),
        Positioned(
          bottom: 4,
          left: 0,
          right: 0,
          child: SliderIndicator(
            activePage: widget._activePage,
            itemLength: widget.items.length,
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget._timer.cancel();
  }
}

class SliderIndicator extends StatefulWidget {
  late final int itemLength;
  int activePage;
  SliderIndicator(
      {super.key, required this.itemLength, required this.activePage});

  @override
  State<SliderIndicator> createState() => _SliderIndicatorState();
}

class _SliderIndicatorState extends State<SliderIndicator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              widget.itemLength,
              (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: GestureDetector(
                      onTap: () {
                        _pageController.animateToPage(index,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      },
                      child: CircleAvatar(
                        backgroundColor: widget.activePage == index
                            ? AppPallete.primary
                            : AppPallete.grey,
                        radius: 4,
                      ),
                    ),
                  ))),
    );
  }
}
